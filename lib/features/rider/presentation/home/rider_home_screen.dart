import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../../../core/localization/app_language.dart';
import '../../../../core/motion/app_motion.dart';
import '../../../../core/localization/locale_controller.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_surface.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/brand_mark.dart';
import '../../../../core/widgets/info_tile.dart';
import '../../../../generated/l10n/app_localizations.dart';
import '../../../auth/data/auth_user.dart';
import '../../../auth/state/auth_controller.dart';
import '../../data/kyc_models.dart';
import '../../data/order_models.dart';
import '../../data/payout_models.dart';
import '../../data/rider_failure.dart';
import '../../data/rider_profile.dart';
import '../../state/order_controller.dart';
import '../../state/payout_controller.dart';
import '../../state/rider_controller.dart';
import '../orders/active_delivery_screen.dart';
import '../orders/delivery_history_screen.dart';
import '../orders/order_board_screen.dart';
import '../orders/order_formatting.dart';
import '../payouts/payout_formatting.dart';
import '../payouts/payouts_screen.dart';

/// The main UI, reached only when `can_go_online` is true.
///
/// A rider who has not been approved never sees this screen — the gate hands
/// them the wizard or the waiting room instead — so nothing here has to defend
/// against an unverified account. What it does defend against is the API
/// changing its mind mid-session: a licence that lapses while the rider is
/// online makes the next duty-status call fail, and the toggle reports that
/// rather than silently staying on.
///
/// Four tabs rather than a stack of pushed routes. A shift moves between them
/// constantly — accept on the board, work the delivery, back to the board —
/// and a route stack would have to be unwound on every transition, exactly as
/// it would at the gate above.
class RiderHomeScreen extends StatefulWidget {
  const RiderHomeScreen({super.key});

  @override
  State<RiderHomeScreen> createState() => _RiderHomeScreenState();
}

class _RiderHomeScreenState extends State<RiderHomeScreen> {
  /// The two tab indices anything else refers to. Named because several
  /// places bring the delivery tab forward, and a bare index repeated in each
  /// of them is one reorder away from pointing at the wrong screen.
  static const int _boardTab = 1;
  static const int _deliveryTab = 2;

  int _tab = 0;

  /// True once the arrival of an order has moved the rider to the delivery
  /// tab, so it happens on the transition rather than on every rebuild — a
  /// rider who deliberately walks back to the board should stay there.
  String? _announcedOrderId;

  /// Captured while mounted, because `dispose` cannot read from the context.
  OrderController? _orders;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _resume());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _orders = context.read<OrderController>();
  }

  /// The heartbeat belongs to this screen, so it ends with it.
  ///
  /// The gate above can replace the home screen mid-session — an approval
  /// lapsing, a licence expiring, a sign-out — and a ping timer that survived
  /// that would keep reporting a position for a rider the app has already
  /// stopped showing a shift to.
  @override
  void dispose() {
    _orders?.stopTracking();
    super.dispose();
  }

  /// Picks the shift back up: what the rider is carrying, and the position
  /// heartbeat if they are on duty.
  ///
  /// Both come from the server rather than from anything remembered locally.
  /// A shift outlives an app process, and an order accepted before a crash is
  /// still the rider's when they reopen.
  Future<void> _resume() async {
    if (!mounted) return;
    final OrderController orders = context.read<OrderController>();
    final RiderController rider = context.read<RiderController>();

    await orders.loadActive();
    if (!mounted) return;

    if (rider.profile?.dutyStatus == DutyStatus.available) {
      orders.startTracking();
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final OrderController orders = context.watch<OrderController>();

    // An order that arrived while the rider was elsewhere brings the delivery
    // tab forward once. Done in the build rather than in a listener because it
    // is a consequence of the state, not of the event that produced it — an
    // order resumed after a restart deserves the same treatment as one just
    // accepted.
    final RiderOrder? active = orders.active;
    if (active != null && active.id != _announcedOrderId) {
      _announcedOrderId = active.id;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) setState(() => _tab = _deliveryTab);
      });
    } else if (active == null) {
      _announcedOrderId = null;
    }

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 20,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const BrandMark(size: 36, radius: 11),
            const SizedBox(width: 10),
            Flexible(
              child: Text(
                l10n.appName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textDirection: TextDirection.ltr,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0,
                ),
              ),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () => Navigator.of(context).pushNamed(AppRoutes.profile),
            icon: const Icon(Icons.person_outline_rounded),
            tooltip: l10n.profileTitle,
          ),
          const SizedBox(width: 6),
        ],
      ),
      body: IndexedStack(
        // Kept alive rather than rebuilt: the board's poll timer and the
        // delivery screen's scroll position both belong to the shift, not to
        // whichever tab happens to be in front.
        index: _tab,
        children: <Widget>[
          _ShiftTab(onOpenDelivery: () => setState(() => _tab = _deliveryTab)),
          OrderBoardScreen(isActive: _tab == _boardTab),
          const ActiveDeliveryScreen(),
          const DeliveryHistoryScreen(),
        ],
      ),
      bottomNavigationBar: _FloatingTabs(
        index: _tab,
        carrying: orders.hasActiveOrder,
        onSelect: (int index) {
          if (index != _tab) HapticFeedback.selectionClick();
          setState(() => _tab = index);
        },
        items: <_TabData>[
          _TabData(l10n.shiftTab, Icons.bolt_outlined, Icons.bolt_rounded),
          _TabData(
            l10n.ordersTab,
            Icons.list_alt_outlined,
            Icons.list_alt_rounded,
          ),
          _TabData(
            l10n.deliveryTab,
            Icons.delivery_dining_outlined,
            Icons.delivery_dining_rounded,
            carriesBadge: true,
          ),
          _TabData(
            l10n.historyTab,
            Icons.history_outlined,
            Icons.history_rounded,
          ),
        ],
      ),
    );
  }
}

/// The shift tab: who the rider is, whether they are working, and what that
/// has earned them so far.
class _ShiftTab extends StatefulWidget {
  const _ShiftTab({required this.onOpenDelivery});

  /// Brings the delivery tab forward. Passed down rather than reached for,
  /// so the card below does not have to know it lives inside a tab shell.
  final VoidCallback onOpenDelivery;

  @override
  State<_ShiftTab> createState() => _ShiftTabState();
}

class _ShiftTabState extends State<_ShiftTab> {
  @override
  void initState() {
    super.initState();
    // The latest payout, for the earnings card. Read once; the payouts
    // screen and a pull re-read it.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final PayoutController payouts = context.read<PayoutController>();
      if (!payouts.hasLoaded && !payouts.isLoading) payouts.load();
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AppLanguage language = context.watch<LocaleController>().language;
    final AuthUser? user = context.watch<AuthController>().user;
    final RiderController rider = context.watch<RiderController>();
    final OrderController orders = context.watch<OrderController>();
    final RiderProfile? profile = rider.profile;

    final Widget languageRow = InfoTile(
      icon: Icons.translate_rounded,
      label: l10n.appLanguageLabel,
      value: language.nativeName,
      valueDirection: language.textDirection,
      onTap: () => Navigator.of(context).pushNamed(
        AppRoutes.language,
        arguments: false,
      ),
    );

    return RefreshIndicator(
      onRefresh: () async {
        await rider.refresh();
        await orders.loadActive(silent: true);
        if (context.mounted) await context.read<PayoutController>().load();
      },
      child: ListView(
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
        physics: const AlwaysScrollableScrollPhysics(),
        children: <Widget>[
          ...entranceGroup(<Widget>[
            if (user != null)
              Text(
                l10n.greetingNamed(
                  profile?.fullName.isNotEmpty ?? false
                      ? profile!.fullName.split(' ').first
                      : user.firstName,
                ),
                style: theme.textTheme.titleMedium?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            Text(
              l10n.riderHomeTitle,
              style: theme.textTheme.headlineSmall
                  ?.copyWith(fontWeight: FontWeight.w800),
            ),
          ]),
          const SizedBox(height: 16),
          if (profile != null) ...<Widget>[
            EntranceFade(index: 2, child: _DutyCard(profile: profile)),
            const SizedBox(height: 12),
            if (orders.active != null) ...<Widget>[
              EntranceFade(
                index: 3,
                child: _ActiveOrderSummary(
                  order: orders.active!,
                  onTap: widget.onOpenDelivery,
                ),
              ),
              const SizedBox(height: 12),
            ],
            EntranceFade(index: 4, child: const _EarningsCard()),
            const SizedBox(height: 12),
            EntranceFade(index: 5, child: _StatsRow(profile: profile)),
            const SizedBox(height: 16),
            InfoTile(
              icon: Icons.two_wheeler_outlined,
              label: l10n.vehicleLabel,
              value: profile.vehicleNumber ?? l10n.notProvided,
              emphasise: profile.vehicleNumber != null,
              valueDirection: TextDirection.ltr,
            ),
            const SizedBox(height: 10),
            InfoTile(
              icon: Icons.verified_user_outlined,
              label: l10n.kycStatusLabel,
              // The chip carries the status on its own; repeating it as the
              // value would put the same word in the row twice.
              value: '',
              trailing: StatusChip(
                label: _kycLabel(profile.kyc.status, l10n),
                tone: profile.kyc.status.isVerified
                    ? StatusTone.positive
                    : StatusTone.warning,
              ),
            ),
            const SizedBox(height: 10),
          ],
          languageRow,
        ],
      ),
    );
  }

  static String _kycLabel(KycStatus status, AppLocalizations l10n) {
    switch (status) {
      case KycStatus.verified:
        return l10n.kycVerified;
      case KycStatus.submitted:
        return l10n.kycSubmitted;
      case KycStatus.rejected:
        return l10n.kycRejected;
      case KycStatus.pending:
      case KycStatus.unknown:
        return l10n.kycPending;
    }
  }
}

/// A one-line reminder of the order in hand, on the tab that is not about it.
///
/// Tapping it goes to the delivery tab rather than pushing a screen, so there
/// is one place an order is worked and one back button that means what it
/// looks like.
class _ActiveOrderSummary extends StatelessWidget {
  const _ActiveOrderSummary({required this.order, required this.onTap});

  final RiderOrder order;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    // Orange, not green, and filled: this is the one thing on the shift tab
    // that is waiting on the rider rather than reporting a steady state.
    const Color ink = Colors.white;

    return Material(
      color: Colors.transparent,
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSurface.radiusLarge),
          gradient: const LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: <Color>[AppColors.orange, AppColors.orangeDeep],
          ),
          boxShadow: AppSurface.hero(context, AppColors.orangeDeep),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(AppSurface.radiusLarge),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 12, 16),
            child: Row(
              children: <Widget>[
                // The one moving thing on the shift tab while an order is in
                // hand, so the eye lands here first.
                Container(
                  width: 46,
                  height: 46,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ink.withValues(alpha: 0.18),
                  ),
                  child: const Icon(
                    Icons.delivery_dining_rounded,
                    color: ink,
                    size: 26,
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        order.status.isCollected
                            ? l10n.deliverToCustomer
                            : l10n.headToRestaurant,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: ink,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        l10n.orderNumberLabel(order.orderNumber),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: ink.withValues(alpha: 0.9),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const BreathingDot(colour: ink, size: 9, spread: 13),
                const Icon(Icons.chevron_right_rounded, color: ink),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// The one control that matters: online, on a break, or offline.
///
/// Three states rather than a switch, because the API has three and collapsing
/// `on_break` into "offline" would lose the distinction dispatch relies on —
/// a rider on a break is still working, just not receiving.
class _DutyCard extends StatelessWidget {
  const _DutyCard({required this.profile});

  final RiderProfile profile;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final RiderController rider = context.watch<RiderController>();
    final OrderController orders = context.watch<OrderController>();
    final bool isDark = theme.brightness == Brightness.dark;

    final bool online = profile.dutyStatus == DutyStatus.available;
    final bool onBreak = profile.dutyStatus == DutyStatus.onBreak;

    // Null whenever nothing is blocking, which is the ordinary case.
    final String? reason = rider.offlineReason;

    final Color accent = online
        ? (isDark ? AppColors.greenLight : AppColors.greenDeep)
        : onBreak
            ? AppColors.orange
            : theme.colorScheme.onSurfaceVariant;

    // The card carries the accent only while the rider is actually working.
    // Offline it is a plain resting surface — the difference between "on" and
    // "off" should be visible across a room, not a shade of border.
    final bool live = online || onBreak;

    return AnimatedContainer(
      duration: AppMotion.medium,
      curve: AppMotion.change,
      padding: const EdgeInsets.all(22),
      decoration: AppSurface.decoration(
        context,
        accent: live ? accent : null,
        radius: AppSurface.radiusLarge,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              // Only breathes while receiving. A dot that pulses at an
              // offline rider is telling them something that is not true —
              // and it would keep every widget test from ever settling.
              AnimatedContainer(
                duration: AppMotion.medium,
                curve: AppMotion.change,
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: accent.withValues(alpha: live ? 0.16 : 0.10),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: <Widget>[
                    Icon(
                      onBreak
                          ? Icons.free_breakfast_rounded
                          : Icons.power_settings_new_rounded,
                      size: 28,
                      color: accent,
                    ),
                    if (online)
                      PositionedDirectional(
                        top: 2,
                        end: 2,
                        child: BreathingDot(colour: accent, size: 9, spread: 12),
                      ),
                  ],
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      l10n.dutyStatusLabel,
                      style: theme.textTheme.labelMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(height: 2),
                    AnimatedDefaultTextStyle(
                      duration: AppMotion.quick,
                      curve: AppMotion.change,
                      style: theme.textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.w800,
                        color: accent,
                        letterSpacing: 0,
                      ),
                      child: Text(
                        online
                            ? l10n.dutyOnline
                            : onBreak
                                ? l10n.dutyOnBreak
                                : l10n.dutyOffline,
                      ),
                    ),
                  ],
                ),
              ),
              if (rider.isSaving)
                const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(strokeWidth: 2.2),
                ),
            ],
          ),
          const SizedBox(height: 14),
          Text(
            online ? l10n.waitingForOrders : l10n.youAreOffline,
            style: theme.textTheme.bodyMedium,
          ),

          // The server's own sentence, rendered as it arrived. It is the same
          // text the duty-status 403 carries, so a rider who taps the button
          // anyway is told exactly what this banner already said — one reason,
          // not two that have to be reconciled.
          if (!profile.canGoOnline && reason != null) ...<Widget>[
            const SizedBox(height: 12),
            _BlockedNotice(reason: reason),
          ],

          // Only shown while it is true, and only while online — a rider who
          // has clocked off should not be told their location is being shared.
          if (online && orders.isTracking) ...<Widget>[
            const SizedBox(height: 8),
            Row(
              children: <Widget>[
                Icon(
                  Icons.my_location_rounded,
                  size: 15,
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                const SizedBox(width: 6),
                Flexible(
                  child: Text(
                    l10n.trackingOn,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ),
              ],
            ),
          ],

          const SizedBox(height: 18),
          Row(
            children: <Widget>[
              Expanded(
                child: FilledButton(
                  // `can_go_online` gates going on duty; clocking *off* is
                  // never blocked, so an offline-bound tap stays live even
                  // when something is wrong with the rider's papers.
                  onPressed: rider.isSaving || (!online && !profile.canGoOnline)
                      ? null
                      : () => _set(
                            context,
                            online ? DutyStatus.offline : DutyStatus.available,
                          ),
                  child: Text(online ? l10n.goOffline : l10n.goOnline),
                ),
              ),
              // Only offered while working — a break from being offline is not
              // a state the API models, and it would 422.
              if (online || onBreak) ...<Widget>[
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton(
                    // Coming back from a break is going on duty, so it is
                    // blocked by the same verdict. Starting one never is.
                    onPressed:
                        rider.isSaving || (onBreak && !profile.canGoOnline)
                            ? null
                            : () => _set(
                                  context,
                                  onBreak
                                      ? DutyStatus.available
                                      : DutyStatus.onBreak,
                                ),
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size.fromHeight(56),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppTheme.radius),
                      ),
                    ),
                    child: Text(
                      onBreak ? l10n.goOnline : l10n.takeABreak,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }

  /// A 403 here is the API refusing to dispatch — a lapsed licence, most
  /// often. A 422 is the API refusing to let a rider clock off mid-delivery.
  /// Both are surfaced verbatim rather than swallowed, because they are the
  /// only warning the rider gets before a shift they cannot work.
  Future<void> _set(BuildContext context, DutyStatus status) async {
    final ScaffoldMessengerState messenger = ScaffoldMessenger.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final RiderController rider = context.read<RiderController>();
    final OrderController orders = context.read<OrderController>();

    final bool goingOnline = status == DutyStatus.available;

    // Asked for before the duty call, not after: the system dialog then
    // appears while the rider is still looking at the button they pressed,
    // and a refusal is caught before they are put on a board that cannot rank
    // them. A refusal does not block going online — dispatch simply has
    // nothing to sort by until a position arrives — so the failure is
    // reported and the call goes ahead.
    RiderFailure? locationFailure;
    if (goingOnline) locationFailure = await orders.primeLocation();

    final RiderFailure? failure = await rider.setDutyStatus(status);

    if (failure == null) {
      if (goingOnline) {
        orders.startTracking();
      } else if (status == DutyStatus.offline) {
        // A break still counts as working, so only a full clock-off stops the
        // heartbeat.
        orders.stopTracking();
      }
    }

    final RiderFailure? reported = failure ?? locationFailure;
    if (reported == null) return;

    // A refused duty change is the one place the server's own words win over
    // a translated string: it is the same sentence `offline_reason` carries,
    // and the banner above the button is already showing it.
    final String? verbatim =
        failure == RiderFailure.documentsExpired ||
                failure == RiderFailure.awaitingVerification
            ? rider.dutyRefusal
            : null;

    messenger
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(verbatim ?? reported.message(l10n)),
          duration: const Duration(seconds: 6),
        ),
      );
  }
}

/// The server's reason a rider cannot clock on, shown as it arrived.
///
/// Deliberately not translated. `offline_reason` and the duty-status 403 are
/// the same string, and a rider shown a translated banner over an untranslated
/// error — or the reverse — has to work out which of the two to believe. One
/// source, one wording. See README > Localisation.
class _BlockedNotice extends StatelessWidget {
  const _BlockedNotice({required this.reason});

  final String reason;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final bool isDark = theme.brightness == Brightness.dark;
    const Color base = AppColors.orangeDeep;

    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: base.withValues(alpha: isDark ? 0.16 : 0.10),
        borderRadius: BorderRadius.circular(AppTheme.radius),
        border: Border.all(color: base.withValues(alpha: 0.35)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Icon(Icons.error_outline_rounded, size: 20, color: base),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              reason,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurface,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _StatsRow extends StatelessWidget {
  const _StatsRow({required this.profile});

  final RiderProfile profile;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);

    return Row(
      children: <Widget>[
        Expanded(
          child: _StatTile(
            icon: Icons.local_shipping_outlined,
            label: l10n.completedDeliveriesLabel,
            value: '${profile.completedDeliveries}',
            count: profile.completedDeliveries,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _StatTile(
            icon: Icons.star_outline_rounded,
            label: l10n.ratingLabel,
            value: profile.rating ?? l10n.notRatedYet,
            muted: profile.rating == null,
          ),
        ),
      ],
    );
  }
}

class _StatTile extends StatelessWidget {
  const _StatTile({
    required this.icon,
    required this.label,
    required this.value,
    this.count,
    this.muted = false,
  });

  final IconData icon;
  final String label;
  final String value;

  /// Set where the figure is a whole number worth animating to. Null renders
  /// [value] as it is — a rating of "4.8" should not count up from zero.
  final int? count;

  final bool muted;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    final TextStyle? figure = theme.textTheme.headlineMedium?.copyWith(
      fontWeight: FontWeight.w800,
      letterSpacing: 0,
      color: muted
          ? theme.colorScheme.onSurfaceVariant
          : theme.colorScheme.onSurface,
      fontSize: muted ? 15 : null,
    );

    return SurfaceCard(
      padding: const EdgeInsets.all(17),
      radius: AppSurface.radiusLarge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // The icon sits in its own tinted chip rather than floating on the
          // card — it reads as a category marker instead of decoration.
          Container(
            width: 34,
            height: 34,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withValues(alpha: 0.13),
              borderRadius: BorderRadius.circular(11),
            ),
            child: Icon(icon, size: 18, color: theme.colorScheme.primary),
          ),
          const SizedBox(height: 14),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: count == null
                ? Text(
                    value,
                    maxLines: 1,
                    textDirection: muted ? null : TextDirection.ltr,
                    style: figure,
                  )
                // A delivery just confirmed moves the number the rider is paid
                // against. Worth watching it move.
                : AnimatedCount(value: count!, style: figure),
          ),
          const SizedBox(height: 3),
          Text(
            label,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}

/// The latest week's pay, on the tab a rider opens first. Tapping it opens
/// every week.
class _EarningsCard extends StatelessWidget {
  const _EarningsCard();

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final PayoutController payouts = context.watch<PayoutController>();
    final Payout? latest =
        payouts.payouts.isEmpty ? null : payouts.payouts.first;
    const Color ink = Colors.white;

    return Material(
      color: Colors.transparent,
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSurface.radiusLarge),
          gradient: const LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: <Color>[Color(0xFF1F6E08), AppColors.greenDeep],
          ),
          boxShadow: AppSurface.hero(context, AppColors.greenDeep),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(AppSurface.radiusLarge),
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute<void>(builder: (_) => const PayoutsScreen()),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(18, 16, 12, 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: 34,
                      height: 34,
                      decoration: BoxDecoration(
                        color: ink.withValues(alpha: 0.16),
                        borderRadius: BorderRadius.circular(11),
                      ),
                      child: const Icon(
                        Icons.account_balance_wallet_outlined,
                        size: 18,
                        color: ink,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        l10n.payoutsTitle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleSmall?.copyWith(
                          color: ink,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    if (latest != null) _StatusPill(payout: latest),
                    Icon(
                      Icons.chevron_right_rounded,
                      color: ink.withValues(alpha: 0.85),
                    ),
                  ],
                ),
                const SizedBox(height: 14),
                if (latest == null)
                  Text(
                    l10n.payoutsEntryValue,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: ink.withValues(alpha: 0.9),
                    ),
                  )
                else ...<Widget>[
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      formatAmount(l10n, latest.net),
                      maxLines: 1,
                      textDirection: TextDirection.ltr,
                      style: theme.textTheme.headlineMedium?.copyWith(
                        color: ink,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    '${l10n.payoutNetLabel} · ${latest.periodText(context, l10n)}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: ink.withValues(alpha: 0.85),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// The payout status on the green card, where the usual chip colours would
/// vanish into the background.
class _StatusPill extends StatelessWidget {
  const _StatusPill({required this.payout});

  final Payout payout;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 120),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        decoration: BoxDecoration(
          color: payout.isPaid
              ? Colors.white
              : Colors.white.withValues(alpha: 0.18),
          borderRadius: BorderRadius.circular(99),
        ),
        child: Text(
          payout.statusText(l10n),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: payout.isPaid ? AppColors.greenDeep : Colors.white,
                fontWeight: FontWeight.w800,
              ),
        ),
      ),
    );
  }
}

@immutable
class _TabData {
  const _TabData(
    this.label,
    this.icon,
    this.selectedIcon, {
    this.carriesBadge = false,
  });

  final String label;
  final IconData icon;
  final IconData selectedIcon;

  /// Shows the dot while an order is in hand.
  final bool carriesBadge;
}

/// The tab bar, as a pill floating over the bottom edge. The delivery tab
/// wears a dot while an order is in hand, so the way back to it is never in
/// doubt.
class _FloatingTabs extends StatelessWidget {
  const _FloatingTabs({
    required this.index,
    required this.items,
    required this.carrying,
    required this.onSelect,
  });

  final int index;
  final List<_TabData> items;
  final bool carrying;
  final ValueChanged<int> onSelect;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final bool isDark = theme.brightness == Brightness.dark;

    return SafeArea(
      top: false,
      minimum: const EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 4, 14, 0),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: theme.colorScheme.surfaceContainerLowest,
            borderRadius: BorderRadius.circular(26),
            border: Border.all(color: AppSurface.line(context)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black.withValues(alpha: isDark ? 0.5 : 0.12),
                blurRadius: 24,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: Row(
              children: <Widget>[
                for (int i = 0; i < items.length; i++)
                  Expanded(
                    child: _TabButton(
                      data: items[i],
                      selected: i == index,
                      badge: items[i].carriesBadge && carrying,
                      onTap: () => onSelect(i),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TabButton extends StatelessWidget {
  const _TabButton({
    required this.data,
    required this.selected,
    required this.badge,
    required this.onTap,
  });

  final _TabData data;
  final bool selected;
  final bool badge;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final bool isDark = theme.brightness == Brightness.dark;
    final Color active = isDark ? AppColors.greenLight : AppColors.greenDeep;
    final Color colour =
        selected ? active : theme.colorScheme.onSurfaceVariant;

    return Semantics(
      button: true,
      selected: selected,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: AnimatedContainer(
          duration: AppMotion.quick,
          curve: AppMotion.change,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
          decoration: BoxDecoration(
            color: selected
                ? active.withValues(alpha: isDark ? 0.18 : 0.12)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Stack(
                clipBehavior: Clip.none,
                children: <Widget>[
                  Icon(
                    selected ? data.selectedIcon : data.icon,
                    size: 24,
                    color: colour,
                  ),
                  if (badge)
                    PositionedDirectional(
                      top: -2,
                      end: -4,
                      child: Container(
                        key: const ValueKey<String>('tab-badge'),
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: AppColors.orangeDeep,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: theme.colorScheme.surfaceContainerLowest,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 3),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  data.label,
                  maxLines: 1,
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: colour,
                    fontWeight: selected ? FontWeight.w800 : FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
