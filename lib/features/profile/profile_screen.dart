import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../core/design/design.dart';
import '../../core/localization/app_language.dart';
import '../../core/localization/locale_controller.dart';
import '../../core/router/app_router.dart';
import '../../core/widgets/info_tile.dart';
import '../../generated/l10n/app_localizations.dart';
import '../auth/data/auth_failure.dart';
import '../auth/data/auth_user.dart';
import '../auth/state/auth_controller.dart';
import '../rider/data/kyc_models.dart';
import '../rider/data/rider_profile.dart';
import '../rider/state/order_controller.dart';
import '../rider/state/payout_controller.dart';
import '../rider/presentation/payouts/payouts_screen.dart';
import '../rider/state/rider_controller.dart';

/// Rider profile, backed by `GET /v1/profile` and the already-loaded
/// `RiderResource`.
///
/// Renders the cached user immediately and refreshes in the background, so the
/// screen is never blank on a slow connection. A failed refresh shows a banner
/// above the still-valid cached data rather than replacing it — the rider's
/// name and number do not stop being true because the network dropped.
///
/// Read-only for now: `PATCH /v1/profile` exists (name, email, phone,
/// preferred_locale) and an edit screen can hang off the same controller.
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _isLoading = false;
  AuthFailure? _failure;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  Future<void> _load() async {
    if (!mounted || _isLoading) return;
    setState(() => _isLoading = true);

    final NavigatorState navigator = Navigator.of(context);
    final AuthController auth = context.read<AuthController>();
    final AuthFailure? failure = await auth.loadProfile();

    if (!mounted) return;

    // The API client refreshes on a 401 and clears the session if that fails.
    if (!auth.isSignedIn) {
      navigator.pushNamedAndRemoveUntil(
        AppRoutes.login,
        (Route<void> route) => false,
      );
      return;
    }

    setState(() {
      _isLoading = false;
      _failure = failure;
    });
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NxTokens t = context.nx;
    final AuthUser? user = context.watch<AuthController>().user;
    final AppLanguage language = context.watch<LocaleController>().language;
    // Already in memory — the gate fetched it before this screen could be
    // reached. Null only when the profile is opened from the error state.
    final RiderProfile? rider = context.watch<RiderController>().profile;

    if (user == null) {
      // Only reachable for a blink between sign-out and the route swap.
      return Scaffold(
        appBar: AppBar(title: Text(l10n.profileTitle)),
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    final String? email = user.email;
    final String? phone = user.phone;
    final DateTime? licence = rider?.kyc.drivingLicenceExpiry;
    final DateTime? insurance = rider?.kyc.insuranceExpiry;
    final MaterialLocalizations dates = MaterialLocalizations.of(context);

    Widget expiryRow(Key key, IconData icon, String label, DateTime date) {
      final bool expired = date.isBefore(DateTime.now());
      return NxListTile(
        key: key,
        icon: icon,
        iconColor: expired ? t.danger : t.primary,
        title: label,
        subtitle: dates.formatMediumDate(date),
        trailing: expired
            ? NxStatusChip(
                label: l10n.documentExpiredBadge,
                tone: NxTone.danger,
              )
            : null,
      );
    }

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: RefreshIndicator(
          onRefresh: _load,
          child: ListView(
            // Always scrollable so pull-to-refresh works even when the
            // content is shorter than the viewport.
            physics: const AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            children: <Widget>[
              _ProfileHeader(
                user: user,
                rider: rider,
                isLoading: _isLoading,
                statusLabel: _statusLabel(user.status, l10n),
                statusTone: _statusTone(user.status),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  NxSpace.screen,
                  NxSpace.lg,
                  NxSpace.screen,
                  NxSpace.xxl,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    if (_failure != null) ...<Widget>[
                      _RefreshFailedBanner(
                        message: _failure!.message(l10n),
                        onRetry: _isLoading ? null : _load,
                      ),
                      const SizedBox(height: NxSpace.md),
                    ],
                    NxListGroup(
                      title: l10n.profileSectionDetails,
                      children: <Widget>[
                        NxListTile(
                          key: const ValueKey<String>('profile-name'),
                          icon: Icons.person_outline_rounded,
                          title: l10n.nameLabel,
                          subtitle: user.name.trim().isEmpty
                              ? l10n.notProvided
                              : user.name,
                        ),
                        NxListTile(
                          key: const ValueKey<String>('profile-phone'),
                          icon: Icons.phone_outlined,
                          title: l10n.mobileLabel,
                          subtitle: phone ?? l10n.notProvided,
                          subtitleDirection:
                              phone == null ? null : TextDirection.ltr,
                          trailing: phone != null && user.phoneVerified
                              ? NxStatusChip(
                                  label: l10n.verifiedLabel,
                                  tone: NxTone.success,
                                )
                              : null,
                        ),
                        NxListTile(
                          key: const ValueKey<String>('profile-email'),
                          icon: Icons.alternate_email_rounded,
                          title: l10n.emailLabel,
                          // An address is LTR whatever the app's direction.
                          subtitle: email ?? l10n.notProvided,
                          subtitleDirection:
                              email == null ? null : TextDirection.ltr,
                        ),
                      ],
                    ),
                    if (rider != null) ...<Widget>[
                      const SizedBox(height: NxSpace.lg),
                      NxListGroup(
                        title: l10n.profileSectionWork,
                        children: <Widget>[
                          NxListTile(
                            key: const ValueKey<String>('profile-kyc'),
                            icon: Icons.verified_user_outlined,
                            title: l10n.kycStatusLabel,
                            trailing: NxStatusChip(
                              label: _kycLabel(rider.kyc.status, l10n),
                              tone: _toNx(_kycTone(rider.kyc.status)),
                            ),
                          ),
                          NxListTile(
                            key: const ValueKey<String>('profile-vehicle'),
                            icon: Icons.two_wheeler_outlined,
                            iconColor: rider.vehicleNumber == null
                                ? t.actionText
                                : t.primary,
                            title: l10n.vehicleLabel,
                            subtitle: rider.vehicleNumber,
                            subtitleDirection: TextDirection.ltr,
                            trailing: rider.vehicleNumber == null
                                ? NxStatusChip(
                                    label: l10n.notProvided,
                                    tone: NxTone.action,
                                  )
                                : null,
                          ),
                          if (licence != null)
                            expiryRow(
                              const ValueKey<String>('profile-licence'),
                              Icons.badge_outlined,
                              l10n.drivingLicenceExpiryLabel,
                              licence,
                            ),
                          if (insurance != null)
                            expiryRow(
                              const ValueKey<String>('profile-insurance'),
                              Icons.health_and_safety_outlined,
                              l10n.insuranceExpiryLabel,
                              insurance,
                            ),
                          NxListTile(
                            icon: Icons.account_balance_wallet_outlined,
                            title: l10n.payoutsTitle,
                            subtitle: l10n.payoutsEntryValue,
                            onTap: () => Navigator.of(context).push(
                              MaterialPageRoute<void>(
                                builder: (_) => const PayoutsScreen(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                    const SizedBox(height: NxSpace.lg),
                    NxListGroup(
                      title: l10n.profileSectionApp,
                      children: <Widget>[
                        NxListTile(
                          icon: Icons.translate_rounded,
                          title: l10n.appLanguageLabel,
                          trailing: Text(
                            language.nativeName,
                            textDirection: language.textDirection,
                            style: NxType.bodySmall.copyWith(
                              color: t.inkMuted,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          onTap: () => Navigator.of(context).pushNamed(
                            AppRoutes.language,
                            arguments: false,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: NxSpace.xl),
                    OutlinedButton.icon(
                      onPressed: () => _signOut(context),
                      icon: const Icon(Icons.logout_rounded, size: 20),
                      label: Text(l10n.signOut),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: t.danger,
                        backgroundColor: t.surface,
                        side: BorderSide(color: t.dangerBorder, width: 1.5),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static NxTone _toNx(StatusTone tone) => switch (tone) {
        StatusTone.positive => NxTone.success,
        StatusTone.warning => NxTone.action,
        StatusTone.negative => NxTone.danger,
        StatusTone.neutral => NxTone.neutral,
      };

  Future<void> _signOut(BuildContext context) async {
    final NavigatorState navigator = Navigator.of(context);
    final ScaffoldMessengerState messenger = ScaffoldMessenger.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);

    final RiderController rider = context.read<RiderController>();
    final OrderController orders = context.read<OrderController>();
    final PayoutController payouts = context.read<PayoutController>();

    await context.read<AuthController>().signOut();
    // Dropped before navigating, so the next rider to sign in on this device
    // never sees the previous one's KYC file on the way to their own.
    rider.reset();
    // Stops the board poll and the position heartbeat as well as dropping
    // the order. A timer that outlived its session would keep a signed-out
    // rider on the dispatch map.
    orders.reset();
    payouts.reset();
    if (!mounted) return;

    navigator.pushNamedAndRemoveUntil(
      AppRoutes.login,
      (Route<void> route) => false,
    );
    messenger
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(l10n.signedOut)));
  }

  static String _statusLabel(UserStatus status, AppLocalizations l10n) {
    switch (status) {
      case UserStatus.active:
        return l10n.statusActive;
      case UserStatus.pending:
        return l10n.statusPending;
      case UserStatus.suspended:
        return l10n.statusSuspended;
      case UserStatus.unknown:
        // The API grew a status this build predates.
        return l10n.notProvided;
    }
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

  static StatusTone _kycTone(KycStatus status) {
    switch (status) {
      case KycStatus.verified:
        return StatusTone.positive;
      case KycStatus.rejected:
        return StatusTone.negative;
      case KycStatus.submitted:
      case KycStatus.pending:
      case KycStatus.unknown:
        return StatusTone.warning;
    }
  }

  static StatusTone _statusTone(UserStatus status) {
    switch (status) {
      case UserStatus.active:
        return StatusTone.positive;
      case UserStatus.pending:
      case UserStatus.unknown:
        return StatusTone.warning;
      case UserStatus.suspended:
        return StatusTone.negative;
    }
  }
}

/// Who the rider is, at a glance: initial, name, how to reach them, and the
/// The green cover with the way back, and over its edge the rider: photo
/// initial, name, rider number and joining date, the verified badge, and
/// the three numbers that sum up their record.
class _ProfileHeader extends StatelessWidget {
  const _ProfileHeader({
    required this.user,
    required this.rider,
    required this.isLoading,
    required this.statusLabel,
    required this.statusTone,
  });

  final AuthUser user;
  final RiderProfile? rider;
  final bool isLoading;
  final String statusLabel;
  final StatusTone statusTone;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NxTokens t = context.nx;
    final double top = MediaQuery.paddingOf(context).top;
    final RiderProfile? rider = this.rider;
    final String name = user.name.trim().isEmpty
        ? (user.email ?? user.phone ?? '')
        : user.name;
    final DateTime? joined = rider?.createdAt?.toLocal();
    final String idLine = <String>[
      if (rider != null) l10n.profileRiderId('${rider.id}'),
      if (joined != null)
        l10n.profileMemberSince(
          MaterialLocalizations.of(context).formatMonthYear(joined),
        ),
    ].join(' · ');

    Widget stat(String value, String label, {Color? colour}) => Expanded(
          child: Column(
            children: <Widget>[
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  value,
                  maxLines: 1,
                  style: NxType.title.copyWith(
                    fontWeight: FontWeight.w800,
                    color: colour ?? t.ink,
                    fontFeatures: NxType.tabular,
                  ),
                ),
              ),
              Text(
                label,
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: NxType.caption.copyWith(
                  color: t.inkMuted,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        );

    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        // The cover.
        Container(
          height: 170 + top,
          padding: EdgeInsets.fromLTRB(
            NxSpace.screen,
            top + NxSpace.sm,
            NxSpace.screen,
            0,
          ),
          decoration: BoxDecoration(
            gradient: t.heroGradient,
            borderRadius:
                const BorderRadius.vertical(bottom: Radius.circular(28)),
          ),
          alignment: AlignmentDirectional.topStart,
          child: Row(
            children: <Widget>[
              Material(
                color: Colors.white.withValues(alpha: 0.16),
                shape: const CircleBorder(),
                child: IconButton(
                  onPressed: () => Navigator.of(context).maybePop(),
                  tooltip: MaterialLocalizations.of(context).backButtonTooltip,
                  icon: const Icon(Icons.arrow_back_rounded, color: Colors.white),
                ),
              ),
              const SizedBox(width: NxSpace.sm),
              Expanded(
                child: Text(
                  l10n.profileTitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: NxType.title.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              if (isLoading)
                const SizedBox(
                  width: 18,
                  height: 18,
                  child: CircularProgressIndicator(
                    strokeWidth: 2.2,
                    color: Colors.white,
                  ),
                ),
            ],
          ),
        ),
        // The card over its edge.
        Padding(
          padding: EdgeInsets.fromLTRB(
            NxSpace.screen,
            170 + top - 56,
            NxSpace.screen,
            0,
          ),
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topCenter,
            children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(
              NxSpace.md,
              0,
              NxSpace.md,
              NxSpace.md,
            ),
            decoration: BoxDecoration(
              color: t.surface,
              borderRadius: BorderRadius.circular(24),
              border: Theme.of(context).brightness == Brightness.dark
                  ? Border.all(color: t.border, width: 1.5)
                  : null,
              boxShadow: t.cardShadow,
            ),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 50),
                Text(
                  name,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: NxType.title.copyWith(
                    fontSize: 21,
                    fontWeight: FontWeight.w800,
                    color: t.ink,
                  ),
                ),
                if (idLine.isNotEmpty) ...<Widget>[
                  const SizedBox(height: 2),
                  Text(
                    idLine,
                    textAlign: TextAlign.center,
                    style: NxType.caption.copyWith(color: t.inkMuted),
                  ),
                ],
                if (rider != null && rider.kyc.status.isVerified) ...<Widget>[
                  const SizedBox(height: NxSpace.xs),
                  NxStatusChip(
                    label: l10n.profileVerifiedPartner,
                    tone: NxTone.success,
                    icon: Icons.check_rounded,
                  ),
                ],
                const SizedBox(height: NxSpace.md),
                if (rider != null)
                  Container(
                    padding: const EdgeInsets.only(top: NxSpace.md),
                    decoration: BoxDecoration(
                      border: Border(top: BorderSide(color: t.hairline)),
                    ),
                    child: IntrinsicHeight(
                      child: Row(
                        children: <Widget>[
                          stat(rider.rating ?? '—', l10n.ratingLabel),
                          VerticalDivider(width: 1, color: t.hairline),
                          stat(
                            '${rider.completedDeliveries}',
                            l10n.completedDeliveriesLabel,
                          ),
                          VerticalDivider(width: 1, color: t.hairline),
                          stat(
                            statusLabel,
                            l10n.accountStatusLabel,
                            colour: switch (statusTone) {
                              StatusTone.positive => t.primary,
                              StatusTone.warning => t.actionText,
                              StatusTone.negative => t.danger,
                              StatusTone.neutral => t.inkMuted,
                            },
                          ),
                        ],
                      ),
                    ),
                  )
                else
                  NxStatusChip(
                    label: statusLabel,
                    tone: _ProfileScreenState._toNx(statusTone),
                  ),
              ],
            ),
          ),
          Positioned(
            top: -42,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: t.surface, width: 4),
              ),
              child: NxAvatar(name: name, size: 84),
            ),
          ),
            ],
          ),
        ),
      ],
    );
  }
}
class _RefreshFailedBanner extends StatelessWidget {
  const _RefreshFailedBanner({required this.message, required this.onRetry});

  final String message;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Color foreground = theme.colorScheme.error;
    final AppLocalizations l10n = AppLocalizations.of(context);

    return Container(
      padding: const EdgeInsets.fromLTRB(14, 12, 8, 12),
      decoration: BoxDecoration(
        color: foreground.withValues(alpha: 0.10),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: foreground.withValues(alpha: 0.35)),
      ),
      child: Row(
        children: <Widget>[
          Icon(Icons.cloud_off_rounded, size: 19, color: foreground),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              message,
              style: theme.textTheme.bodySmall?.copyWith(color: foreground),
            ),
          ),
          TextButton(
            onPressed: onRetry,
            style: TextButton.styleFrom(
              foregroundColor: foreground,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              minimumSize: const Size(0, 40),
            ),
            child: Text(l10n.retry),
          ),
        ],
      ),
    );
  }
}
