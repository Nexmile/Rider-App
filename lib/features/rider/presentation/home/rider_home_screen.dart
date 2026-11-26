import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../../../core/design/design.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/brand_mark.dart';
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
import '../../state/shift_summary.dart';
import '../orders/active_delivery_screen.dart';
import '../orders/delivery_history_screen.dart';
import '../orders/order_board_screen.dart';
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

  static const int _historyTab = 3;

  @override
  Widget build(BuildContext context) {
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

    // The Shift tab draws its own header (greeting, avatar, duty switch);
    // the others share a slim bar with the brand and the way to the profile.
    final bool onShift = _tab == 0;
    // Delivery with an order in hand is map first, edge to edge.
    final bool fullBleed =
        onShift || (_tab == _deliveryTab && orders.hasActiveOrder);

    return Scaffold(
      appBar: fullBleed
          ? null
          : AppBar(
              titleSpacing: NxSpace.screen,
              title: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const BrandMark(size: 32, radius: 10),
                  const SizedBox(width: 10),
                  Flexible(
                    child: Text(
                      l10n.appName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textDirection: TextDirection.ltr,
                      style: NxType.title.copyWith(
                        fontWeight: FontWeight.w800,
                        color: context.nx.ink,
                      ),
                    ),
                  ),
                ],
              ),
              actions: const <Widget>[
                _ProfileButton(size: 38),
                SizedBox(width: NxSpace.sm),
              ],
            ),
      body: IndexedStack(
        // Kept alive rather than rebuilt: the board's poll timer and the
        // delivery screen's scroll position both belong to the shift, not to
        // whichever tab happens to be in front.
        index: _tab,
        children: <Widget>[
          SafeArea(
            bottom: false,
            child: _ShiftTab(
              onOpenDelivery: () => setState(() => _tab = _deliveryTab),
              onOpenHistory: () => setState(() => _tab = _historyTab),
            ),
          ),
          OrderBoardScreen(isActive: _tab == _boardTab),
          const ActiveDeliveryScreen(),
          const DeliveryHistoryScreen(),
        ],
      ),
      bottomNavigationBar: NxTabBar(
        index: _tab,
        onSelect: (int index) => setState(() => _tab = index),
        tabs: <NxTab>[
          NxTab(
            label: l10n.shiftTab,
            icon: Icons.bolt_outlined,
            selectedIcon: Icons.bolt_rounded,
          ),
          NxTab(
            label: l10n.ordersTab,
            icon: Icons.list_alt_outlined,
            selectedIcon: Icons.list_alt_rounded,
          ),
          NxTab(
            label: l10n.deliveryTab,
            icon: Icons.delivery_dining_outlined,
            selectedIcon: Icons.delivery_dining_rounded,
            badge: orders.hasActiveOrder,
          ),
          NxTab(
            label: l10n.historyTab,
            icon: Icons.history_outlined,
            selectedIcon: Icons.history_rounded,
          ),
        ],
      ),
    );
  }
}

/// The rider's initial in a circle; opens the profile.
class _ProfileButton extends StatelessWidget {
  const _ProfileButton({this.size = 44});

  final double size;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AuthUser? user = context.watch<AuthController>().user;
    final RiderProfile? profile = context.watch<RiderController>().profile;
    final String name = (profile?.fullName.isNotEmpty ?? false)
        ? profile!.fullName
        : (user?.name ?? '');
    return Semantics(
      button: true,
      label: l10n.profileTitle,
      child: Tooltip(
        message: l10n.profileTitle,
        child: InkWell(
          key: const ValueKey<String>('open-profile'),
          customBorder: const CircleBorder(),
          onTap: () => Navigator.of(context).pushNamed(AppRoutes.profile),
          child: NxAvatar(name: name, size: size),
        ),
      ),
    );
  }
}

/// The shift tab, the way the day reads: who and whether working, the order
/// in hand, what today has paid, the duty controls, this week's payout, and
/// the places a rider goes from here.
class _ShiftTab extends StatefulWidget {
  const _ShiftTab({required this.onOpenDelivery, required this.onOpenHistory});

  final VoidCallback onOpenDelivery;
  final VoidCallback onOpenHistory;

  @override
  State<_ShiftTab> createState() => _ShiftTabState();
}

class _ShiftTabState extends State<_ShiftTab> {
  @override
  void initState() {
    super.initState();
    // The latest payout, for the week card, and the history today's numbers
    // are worked out from. Each read once; a pull re-reads both.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final PayoutController payouts = context.read<PayoutController>();
      if (!payouts.hasLoaded && !payouts.isLoading) payouts.load();
      final OrderController orders = context.read<OrderController>();
      if (orders.history.isEmpty && !orders.isLoadingHistory) {
        orders.loadHistory();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final RiderController rider = context.watch<RiderController>();
    final OrderController orders = context.watch<OrderController>();
    final RiderProfile? profile = rider.profile;

    return RefreshIndicator(
      onRefresh: () async {
        await rider.refresh();
        await orders.loadActive(silent: true);
        await orders.loadHistory();
        if (context.mounted) await context.read<PayoutController>().load();
      },
      child: ListView(
        padding: const EdgeInsets.fromLTRB(
          NxSpace.screen,
          NxSpace.sm,
          NxSpace.screen,
          NxSpace.xl,
        ),
        physics: const AlwaysScrollableScrollPhysics(),
        children: <Widget>[
          ...entranceGroup(<Widget>[
            _Header(profile: profile),
            const SizedBox(height: NxSpace.md),
            if (orders.active != null) ...<Widget>[
              _CurrentOrderBanner(
                order: orders.active!,
                onTap: widget.onOpenDelivery,
              ),
              const SizedBox(height: NxSpace.md),
            ],
            if (profile != null) ...<Widget>[
              _TodayCard(
                summary: ShiftSummary.today(orders.history),
                rating: profile.rating,
                loading: orders.isLoadingHistory && orders.history.isEmpty,
                onDetails: widget.onOpenHistory,
              ),
              const SizedBox(height: NxSpace.md),
              _DutyCard(profile: profile),
              const SizedBox(height: NxSpace.md),
              const _WeekPayoutCard(),
              const SizedBox(height: NxSpace.lg),
            ],
            _QuickActions(onHistory: widget.onOpenHistory),
          ]),
          if (profile == null) ...<Widget>[
            const SizedBox(height: NxSpace.lg),
            Text(
              l10n.riderHomeSubtitle,
              textAlign: TextAlign.center,
              style: NxType.body.copyWith(color: context.nx.inkMuted),
            ),
          ],
        ],
      ),
    );
  }
}

/// Avatar, greeting, and the duty switch.
class _Header extends StatelessWidget {
  const _Header({required this.profile});

  final RiderProfile? profile;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NxTokens t = context.nx;
    final AuthUser? user = context.watch<AuthController>().user;
    final RiderProfile? profile = this.profile;
    final String first = (profile?.fullName.isNotEmpty ?? false)
        ? profile!.fullName.split(' ').first
        : (user?.firstName ?? '');
    return Row(
      children: <Widget>[
        const _ProfileButton(),
        const SizedBox(width: NxSpace.sm),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              if (first.isNotEmpty)
                Text(
                  l10n.greetingNamed(first),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: NxType.caption.copyWith(
                    color: t.inkMuted,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              Text(
                l10n.riderHomeTitle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: NxType.titleSmall.copyWith(
                  color: t.ink,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
        if (profile != null) ...<Widget>[
          const SizedBox(width: NxSpace.xs),
          _DutyPill(profile: profile),
        ],
      ],
    );
  }
}

/// ON / OFF / BREAK in a pill with a knob: the duty switch, one tap away at
/// the top of the shift. Does the same as the buttons on the duty card.
class _DutyPill extends StatelessWidget {
  const _DutyPill({required this.profile});

  final RiderProfile profile;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NxTokens t = context.nx;
    final RiderController rider = context.watch<RiderController>();
    final bool online = profile.dutyStatus == DutyStatus.available;
    final bool onBreak = profile.dutyStatus == DutyStatus.onBreak;

    final Color fill = online
        ? t.primary
        : onBreak
            ? t.action
            : t.night;
    final Color ink = online
        ? t.onPrimary
        : onBreak
            ? t.onAction
            : t.onNight;
    final String word = online
        ? l10n.dutyPillOn
        : onBreak
            ? l10n.dutyPillBreak
            : l10n.dutyPillOff;

    // Clocking off is never blocked; going on duty follows the server's
    // verdict, exactly as the card's buttons do.
    final DutyStatus next =
        online ? DutyStatus.offline : DutyStatus.available;
    final bool enabled =
        !rider.isSaving && (online || profile.canGoOnline);

    return Semantics(
      button: true,
      toggled: online,
      label: online ? l10n.goOffline : l10n.goOnline,
      excludeSemantics: true,
      child: Opacity(
        opacity: enabled ? 1 : 0.55,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            key: const ValueKey<String>('duty-pill'),
            borderRadius: NxRadius.pillAll,
            onTap: enabled
                ? () {
                    HapticFeedback.selectionClick();
                    _setDuty(context, next);
                  }
                : null,
            child: AnimatedContainer(
              duration: AppMotion.quick,
              curve: AppMotion.change,
              height: 40,
              padding: const EdgeInsetsDirectional.fromSTEB(12, 4, 4, 4),
              decoration: BoxDecoration(
                color: fill,
                borderRadius: NxRadius.pillAll,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 72),
                    child: Text(
                      word,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: NxType.caption.copyWith(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        color: ink,
                      ),
                    ),
                  ),
                  const SizedBox(width: NxSpace.xs),
                  Container(
                    width: 32,
                    height: 32,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: rider.isSaving
                          ? SizedBox(
                              width: 14,
                              height: 14,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: fill,
                              ),
                            )
                          : Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: online
                                    ? t.primaryBright
                                    : onBreak
                                        ? t.action
                                        : t.inkFaint,
                                boxShadow: online
                                    ? <BoxShadow>[
                                        BoxShadow(
                                          color: t.primaryBright
                                              .withValues(alpha: 0.25),
                                          spreadRadius: 4,
                                        ),
                                      ]
                                    : null,
                              ),
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// The order in hand, in orange: the one thing on this tab that is waiting
/// on the rider. Opens the delivery tab rather than pushing a screen.
class _CurrentOrderBanner extends StatelessWidget {
  const _CurrentOrderBanner({required this.order, required this.onTap});

  final RiderOrder order;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NxTokens t = context.nx;
    final Color ink = t.onAction;
    return Material(
      color: t.action,
      borderRadius: BorderRadius.circular(18),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(18),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(14, 12, 10, 12),
          child: Row(
            children: <Widget>[
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withValues(alpha: 0.35),
                ),
                child: Icon(Icons.delivery_dining_rounded, color: ink),
              ),
              const SizedBox(width: NxSpace.sm),
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
                      style: NxType.titleSmall.copyWith(
                        color: ink,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      l10n.orderNumberLabel(order.orderNumber),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: NxType.bodySmall.copyWith(
                        color: ink.withValues(alpha: 0.8),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(Icons.chevron_right_rounded, color: ink),
            ],
          ),
        ),
      ),
    );
  }
}

/// Today's earnings, the hero of the tab: the amount large, then orders,
/// cash taken and rating in small tiles.
class _TodayCard extends StatelessWidget {
  const _TodayCard({
    required this.summary,
    required this.rating,
    required this.loading,
    required this.onDetails,
  });

  final ShiftSummary summary;
  final String? rating;
  final bool loading;
  final VoidCallback onDetails;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    const Color ink = Colors.white;

    Widget tile(Widget value, String label) => Expanded(
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: ink.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 24,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: AlignmentDirectional.centerStart,
                    child: DefaultTextStyle.merge(
                      style: NxType.titleSmall.copyWith(
                        color: ink,
                        fontSize: 17,
                        fontWeight: FontWeight.w800,
                        fontFeatures: NxType.tabular,
                      ),
                      child: value,
                    ),
                  ),
                ),
                Text(
                  label,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: NxType.caption.copyWith(
                    fontSize: 11,
                    color: ink.withValues(alpha: 0.8),
                  ),
                ),
              ],
            ),
          ),
        );

    return NxHeroCard(
      key: const ValueKey<String>('today-card'),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  l10n.shiftTodayEarnings.toUpperCase(),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: NxType.caption.copyWith(
                    color: ink.withValues(alpha: 0.85),
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1,
                  ),
                ),
              ),
              Material(
                color: ink.withValues(alpha: 0.16),
                borderRadius: NxRadius.pillAll,
                child: InkWell(
                  onTap: onDetails,
                  borderRadius: NxRadius.pillAll,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(10, 6, 6, 6),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          l10n.shiftDetails,
                          style: NxType.caption.copyWith(
                            color: ink,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const Icon(
                          Icons.chevron_right_rounded,
                          size: 16,
                          color: ink,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: NxSpace.sm),
          SizedBox(
            height: 60,
            child: loading
                ? Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Container(
                      width: 150,
                      height: 44,
                      decoration: BoxDecoration(
                        color: ink.withValues(alpha: 0.16),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  )
                : FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: AlignmentDirectional.centerStart,
                    child: NxMoneyText(
                      summary.earnings,
                      alwaysPaise: true,
                      colour: ink,
                      style: NxType.display.copyWith(fontSize: 50),
                    ),
                  ),
          ),
          const SizedBox(height: NxSpace.sm),
          Row(
            children: <Widget>[
              tile(Text('${summary.deliveries}'), l10n.shiftOrdersToday),
              const SizedBox(width: NxSpace.xs),
              tile(
                NxMoneyText(summary.cash, split: false, colour: ink),
                l10n.shiftCashCollected,
              ),
              const SizedBox(width: NxSpace.xs),
              tile(Text(rating ?? '—'), l10n.ratingLabel),
            ],
          ),
        ],
      ),
    );
  }
}

/// The duty controls: a big Go online when off, Take a break and Go offline
/// when on. The switch at the top does the same; this is where the reason
/// shows when the server will not let the rider on.
class _DutyCard extends StatelessWidget {
  const _DutyCard({required this.profile});

  final RiderProfile profile;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NxTokens t = context.nx;
    final RiderController rider = context.watch<RiderController>();
    final OrderController orders = context.watch<OrderController>();
    final bool online = profile.dutyStatus == DutyStatus.available;
    final bool onBreak = profile.dutyStatus == DutyStatus.onBreak;
    final String? reason = rider.offlineReason;
    final bool working = online || onBreak;
    final Color tone = online
        ? t.primary
        : onBreak
            ? t.actionText
            : t.inkMuted;

    return NxCard(
      borderColor: working ? tone.withValues(alpha: 0.5) : null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: tone.withValues(alpha: 0.12),
                ),
                child: Center(
                  // Only breathes while receiving: a dot pulsing at an
                  // offline rider says something untrue.
                  child: online
                      ? BreathingDot(colour: t.primaryBright, size: 12, spread: 16)
                      : Icon(
                          onBreak
                              ? Icons.free_breakfast_rounded
                              : Icons.power_settings_new_rounded,
                          color: tone,
                        ),
                ),
              ),
              const SizedBox(width: NxSpace.sm),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      l10n.dutyStatusLabel,
                      style: NxType.caption.copyWith(color: t.inkMuted),
                    ),
                    AnimatedDefaultTextStyle(
                      duration: AppMotion.quick,
                      style: NxType.title.copyWith(
                        color: tone,
                        fontWeight: FontWeight.w800,
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
          const SizedBox(height: NxSpace.sm),
          Text(
            online ? l10n.waitingForOrders : l10n.youAreOffline,
            style: NxType.body.copyWith(color: t.inkMuted),
          ),
          // The server's own sentence, as it arrived: the same text the
          // duty-status 403 carries, so the rider is told one reason, not two.
          if (!profile.canGoOnline && reason != null) ...<Widget>[
            const SizedBox(height: NxSpace.sm),
            _BlockedNotice(reason: reason),
          ],
          // Only while true, and only while online: a rider who has clocked
          // off should not be told their location is being shared.
          if (online && orders.isTracking) ...<Widget>[
            const SizedBox(height: NxSpace.xs),
            Row(
              children: <Widget>[
                Icon(Icons.my_location_rounded, size: 15, color: t.inkMuted),
                const SizedBox(width: 6),
                Flexible(
                  child: Text(
                    l10n.trackingOn,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: NxType.caption.copyWith(color: t.inkMuted),
                  ),
                ),
              ],
            ),
          ],
          const SizedBox(height: NxSpace.md),
          if (!working)
            // `can_go_online` gates going on duty.
            NxPrimaryButton(
              label: l10n.goOnline,
              icon: Icons.power_settings_new_rounded,
              busy: rider.isSaving,
              onPressed: profile.canGoOnline
                  ? () {
                      HapticFeedback.mediumImpact();
                      _setDuty(context, DutyStatus.available);
                    }
                  : null,
            )
          else
            Row(
              children: <Widget>[
                Expanded(
                  child: OutlinedButton(
                    // Coming back from a break is going on duty, so it is
                    // blocked by the same verdict. Starting one never is.
                    onPressed: rider.isSaving ||
                            (onBreak && !profile.canGoOnline)
                        ? null
                        : () => _setDuty(
                              context,
                              onBreak
                                  ? DutyStatus.available
                                  : DutyStatus.onBreak,
                            ),
                    child: Text(
                      onBreak ? l10n.goOnline : l10n.takeABreak,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                const SizedBox(width: NxSpace.sm),
                Expanded(
                  // Clocking off is never blocked, so this stays live even
                  // when something is wrong with the rider's papers.
                  child: FilledButton(
                    onPressed: rider.isSaving
                        ? null
                        : () => _setDuty(context, DutyStatus.offline),
                    style: FilledButton.styleFrom(
                      backgroundColor: t.night,
                      foregroundColor: t.onNight,
                    ),
                    child: Text(
                      l10n.goOffline,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}

/// This week's payout, on a white card: the latest week's amount payable,
/// its dates and whether it has been sent. Opens every week.
class _WeekPayoutCard extends StatelessWidget {
  const _WeekPayoutCard();

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NxTokens t = context.nx;
    final PayoutController payouts = context.watch<PayoutController>();
    final Payout? latest =
        payouts.payouts.isEmpty ? null : payouts.payouts.first;

    return NxCard(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute<void>(builder: (_) => const PayoutsScreen()),
      ),
      child: Row(
        children: <Widget>[
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: t.primarySoft,
              borderRadius: NxRadius.smallAll,
            ),
            child: Icon(
              Icons.account_balance_wallet_outlined,
              color: t.primary,
            ),
          ),
          const SizedBox(width: NxSpace.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  latest == null
                      ? l10n.payoutsTitle
                      : '${l10n.payoutsLatestWeek} · '
                          '${latest.periodText(context, l10n)}',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: NxType.caption.copyWith(color: t.inkMuted),
                ),
                if (latest == null)
                  Text(
                    l10n.payoutsEntryValue,
                    style: NxType.titleSmall.copyWith(color: t.ink),
                  )
                else
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: AlignmentDirectional.centerStart,
                    child: NxMoneyText(
                      latest.net,
                      colour: t.ink,
                      style: NxType.title.copyWith(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          if (latest != null) ...<Widget>[
            const SizedBox(width: NxSpace.xs),
            NxStatusChip(
              label: latest.statusText(l10n),
              tone: latest.isPaid ? NxTone.success : NxTone.action,
            ),
          ],
          Icon(Icons.chevron_right_rounded, color: t.inkFaint),
        ],
      ),
    );
  }
}

/// The places a rider goes from the shift tab, as four round tiles.
class _QuickActions extends StatelessWidget {
  const _QuickActions({required this.onHistory});

  final VoidCallback onHistory;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NxTokens t = context.nx;

    Widget action(IconData icon, String label, Color tint, VoidCallback onTap) =>
        Expanded(
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(18),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: NxSpace.xxs),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      color: tint.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Icon(icon, color: tint),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    label,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: NxType.caption.copyWith(color: t.ink),
                  ),
                ],
              ),
            ),
          ),
        );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        action(Icons.receipt_long_rounded, l10n.historyTitle, t.primary,
            onHistory),
        action(
          Icons.payments_outlined,
          l10n.payoutsTitle,
          t.actionText,
          () => Navigator.of(context).push(
            MaterialPageRoute<void>(builder: (_) => const PayoutsScreen()),
          ),
        ),
        action(
          Icons.translate_rounded,
          l10n.appLanguageLabel,
          t.info,
          () => Navigator.of(context).pushNamed(
            AppRoutes.language,
            arguments: false,
          ),
        ),
        action(
          Icons.person_rounded,
          l10n.profileTitle,
          t.inkMuted,
          () => Navigator.of(context).pushNamed(AppRoutes.profile),
        ),
      ],
    );
  }
}

/// A 403 here is the API refusing to dispatch — a lapsed licence, most
/// often. A 422 is the API refusing to let a rider clock off mid-delivery.
/// Both are surfaced verbatim rather than swallowed, because they are the
/// only warning the rider gets before a shift they cannot work.
Future<void> _setDuty(BuildContext context, DutyStatus status) async {
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
    final NxTokens t = context.nx;
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: t.actionSoft,
        borderRadius: NxRadius.controlAll,
        border: Border.all(color: t.action.withValues(alpha: 0.4)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.error_outline_rounded, size: 20, color: t.actionText),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              reason,
              style: NxType.bodySmall.copyWith(color: t.ink),
            ),
          ),
        ],
      ),
    );
  }
}
