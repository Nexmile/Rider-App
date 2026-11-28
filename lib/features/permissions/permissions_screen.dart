import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/design/design.dart';
import '../../core/router/app_router.dart';
import '../../core/services/preferences_service.dart';
import '../../generated/l10n/app_localizations.dart';
import 'permission_gateway.dart';

/// The permission pages a fresh install sees, one permission per page.
///
/// Each page says what the permission is for before the system prompt
/// appears. The prompt itself gives one line and two buttons, and a refusal
/// there is costly: Android stops asking after the second one. So the reasons
/// come first, and the prompt only appears after the rider taps Allow.
///
/// "Not now" always works. Whatever is still missing stays on the board's
/// phone setup banner, so skipping here is never a dead end.
class PermissionsScreen extends StatefulWidget {
  const PermissionsScreen({super.key, required this.args});

  final PermissionsArgs args;

  @override
  State<PermissionsScreen> createState() => _PermissionsScreenState();
}

class _PermissionsScreenState extends State<PermissionsScreen> {
  int _index = 0;
  bool _busy = false;

  List<RiderPermission> get _steps => widget.args.steps;

  Future<void> _allow() async {
    final PermissionGateway gateway = context.read<PermissionGateway>();
    setState(() => _busy = true);
    await gateway.request(_steps[_index]);
    if (!mounted) return;
    setState(() => _busy = false);
    _next();
  }

  void _next() {
    if (_index < _steps.length - 1) {
      setState(() => _index++);
    } else {
      _finish();
    }
  }

  Future<void> _finish() async {
    final NavigatorState navigator = Navigator.of(context);
    setState(() => _busy = true);
    await context.read<PreferencesService>().markPermissionsAsked();
    if (!mounted) return;
    navigator.pushNamedAndRemoveUntil(
      widget.args.next,
      (Route<void> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final RiderPermission step = _steps[_index];
    final _PageContent content = _contentFor(step, l10n);

    return PopScope(
      // Back steps back through the pages before it leaves them.
      canPop: _index == 0,
      onPopInvokedWithResult: (bool didPop, Object? result) {
        if (!didPop && _index > 0 && !_busy) setState(() => _index--);
      },
      child: Scaffold(
        backgroundColor: context.nx.ground,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              if (_steps.length > 1)
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    NxSpace.xl,
                    NxSpace.md,
                    NxSpace.xl,
                    0,
                  ),
                  child: _Progress(index: _index, total: _steps.length),
                ),
              Expanded(
                child: AnimatedSwitcher(
                  duration: AppMotion.medium,
                  switchInCurve: AppMotion.enter,
                  switchOutCurve: AppMotion.change,
                  transitionBuilder:
                      (Widget child, Animation<double> animation) =>
                          FadeTransition(
                    opacity: animation,
                    child: SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(0.06, 0),
                        end: Offset.zero,
                      ).animate(animation),
                      child: child,
                    ),
                  ),
                  child: _Page(
                    key: ValueKey<RiderPermission>(step),
                    content: content,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  NxSpace.xl,
                  NxSpace.xs,
                  NxSpace.xl,
                  NxSpace.sm,
                ),
                child: Column(
                  children: <Widget>[
                    NxPrimaryButton(
                      label: content.allowLabel,
                      icon: content.allowIcon,
                      onPressed: _busy ? null : _allow,
                    ),
                    const SizedBox(height: 6),
                    TextButton(
                      onPressed: _busy ? null : _next,
                      style: TextButton.styleFrom(
                        minimumSize: const Size.fromHeight(48),
                        foregroundColor: context.nx.inkMuted,
                        textStyle: NxType.button.copyWith(fontSize: 15),
                      ),
                      child: Text(l10n.permNotNow),
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

  static _PageContent _contentFor(
    RiderPermission step,
    AppLocalizations l10n,
  ) =>
      switch (step) {
        RiderPermission.location => _PageContent(
            icon: Icons.location_on_rounded,
            tone: NxTone.success,
            title: l10n.permLocationTitle,
            body: l10n.permLocationBody,
            reasons: <_Reason>[
              _Reason(
                Icons.near_me_rounded,
                l10n.permLocationNearTitle,
                l10n.permLocationNearBody,
              ),
              _Reason(
                Icons.map_rounded,
                l10n.permLocationTrackTitle,
                l10n.permLocationTrackBody,
              ),
              _Reason(
                Icons.lock_outline_rounded,
                l10n.permLocationOnlineTitle,
                l10n.permLocationOnlineBody,
              ),
            ],
            allowLabel: l10n.permLocationAllow,
            allowIcon: Icons.my_location_rounded,
          ),
        RiderPermission.notifications => _PageContent(
            icon: Icons.notifications_active_rounded,
            tone: NxTone.action,
            title: l10n.permNotifyTitle,
            body: l10n.permNotifyBody,
            reasons: <_Reason>[
              _Reason(
                Icons.ring_volume_rounded,
                l10n.permNotifyRingTitle,
                l10n.permNotifyRingBody,
              ),
              _Reason(
                Icons.account_balance_wallet_outlined,
                l10n.permNotifyUpdatesTitle,
                l10n.permNotifyUpdatesBody,
              ),
              _Reason(
                Icons.tune_rounded,
                l10n.permNotifyControlTitle,
                l10n.permNotifyControlBody,
              ),
            ],
            allowLabel: l10n.permNotifyAllow,
            allowIcon: Icons.notifications_rounded,
          ),
        RiderPermission.battery => _PageContent(
            icon: Icons.battery_charging_full_rounded,
            tone: NxTone.success,
            title: l10n.permBatteryTitle,
            body: l10n.permBatteryBody,
            reasons: <_Reason>[
              _Reason(
                Icons.delivery_dining_rounded,
                l10n.permBatteryOrdersTitle,
                l10n.permBatteryOrdersBody,
              ),
              _Reason(
                Icons.map_rounded,
                l10n.permBatteryLiveTitle,
                l10n.permBatteryLiveBody,
              ),
              _Reason(
                Icons.eco_outlined,
                l10n.permBatteryLightTitle,
                l10n.permBatteryLightBody,
              ),
            ],
            allowLabel: l10n.permBatteryAllow,
            allowIcon: Icons.check_rounded,
          ),
        RiderPermission.fullScreen => _PageContent(
            icon: Icons.screen_lock_portrait_rounded,
            tone: NxTone.action,
            title: l10n.permFullScreenTitle,
            body: l10n.permFullScreenBody,
            reasons: <_Reason>[
              _Reason(
                Icons.phone_in_talk_rounded,
                l10n.permFullScreenCallTitle,
                l10n.permFullScreenCallBody,
              ),
              _Reason(
                Icons.timer_outlined,
                l10n.permFullScreenTimeTitle,
                l10n.permFullScreenTimeBody,
              ),
              _Reason(
                Icons.verified_user_outlined,
                l10n.permFullScreenOnlyTitle,
                l10n.permFullScreenOnlyBody,
              ),
            ],
            allowLabel: l10n.setupOpenSettings,
            allowIcon: Icons.open_in_new_rounded,
          ),
        RiderPermission.overlay => _PageContent(
            icon: Icons.layers_rounded,
            tone: NxTone.success,
            title: l10n.permOverlayTitle,
            body: l10n.permOverlayBody,
            reasons: <_Reason>[
              _Reason(
                Icons.delivery_dining_rounded,
                l10n.permOverlayCardTitle,
                l10n.permOverlayCardBody,
              ),
              _Reason(
                Icons.bolt_rounded,
                l10n.permOverlayFastTitle,
                l10n.permOverlayFastBody,
              ),
              _Reason(
                Icons.verified_user_outlined,
                l10n.permOverlayOnlyTitle,
                l10n.permOverlayOnlyBody,
              ),
            ],
            allowLabel: l10n.setupOpenSettings,
            allowIcon: Icons.open_in_new_rounded,
          ),
      };
}

class _Reason {
  const _Reason(this.icon, this.title, this.body);

  final IconData icon;
  final String title;
  final String body;
}

class _PageContent {
  const _PageContent({
    required this.icon,
    required this.tone,
    required this.title,
    required this.body,
    required this.reasons,
    required this.allowLabel,
    required this.allowIcon,
  });

  final IconData icon;

  /// Green for what the job runs on, orange for what makes an order ring.
  final NxTone tone;
  final String title;
  final String body;
  final List<_Reason> reasons;
  final String allowLabel;
  final IconData allowIcon;
}

class _Page extends StatelessWidget {
  const _Page({super.key, required this.content});

  final _PageContent content;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    final Color tint = content.tone.colour(t);

    return ListView(
      padding: const EdgeInsets.fromLTRB(
        NxSpace.screen,
        NxSpace.md,
        NxSpace.screen,
        NxSpace.sm,
      ),
      children: <Widget>[
        _Illustration(icon: content.icon, tone: content.tone),
        const SizedBox(height: NxSpace.xl),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: NxSpace.xs),
          child: Column(
            children: <Widget>[
              Text(
                content.title,
                textAlign: TextAlign.center,
                style: NxType.headline.copyWith(color: t.ink),
              ),
              const SizedBox(height: NxSpace.sm - 2),
              Text(
                content.body,
                textAlign: TextAlign.center,
                style: NxType.body.copyWith(color: t.inkMuted, height: 1.45),
              ),
            ],
          ),
        ),
        const SizedBox(height: NxSpace.xl),
        NxListGroup(
          children: <Widget>[
            for (final _Reason reason in content.reasons)
              NxListTile(
                icon: reason.icon,
                iconColor: tint,
                title: reason.title,
                subtitle: reason.body,
              ),
          ],
        ),
      ],
    );
  }
}

/// The page's picture: a panel in the permission's colour, the icon on a
/// white disc in two soft rings, and a lime spark. It settles in once rather
/// than pulsing, so the page is still while the rider reads it.
class _Illustration extends StatelessWidget {
  const _Illustration({required this.icon, required this.tone});

  final IconData icon;
  final NxTone tone;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    final Gradient panel = tone == NxTone.success
        ? t.heroGradient
        : LinearGradient(
            begin: const Alignment(-0.9, -1),
            end: const Alignment(0.9, 1),
            colors: <Color>[t.actionText, t.action],
          );
    final bool still = AppMotion.reduced(context);

    return Container(
      height: 208,
      decoration: BoxDecoration(
        gradient: panel,
        borderRadius: NxRadius.heroAll,
      ),
      child: ClipRRect(
        borderRadius: NxRadius.heroAll,
        child: CustomPaint(
          painter: const NxHeroPattern(),
          child: Center(
            child: TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: still ? 1 : 0, end: 1),
              duration: const Duration(milliseconds: 650),
              curve: AppMotion.emphasise,
              builder: (BuildContext context, double v, Widget? child) =>
                  Transform.scale(
                scale: 0.8 + 0.2 * v,
                child: Opacity(opacity: v.clamp(0.0, 1.0), child: child),
              ),
              child: SizedBox(
                width: 168,
                height: 168,
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    _disc(168, Colors.white.withValues(alpha: 0.08)),
                    _disc(128, Colors.white.withValues(alpha: 0.14)),
                    Container(
                      width: 92,
                      height: 92,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: NxShadows.floating,
                      ),
                      child: Icon(icon, size: 44, color: tone.colour(t)),
                    ),
                    // A lime spark and a white one, for depth.
                    Positioned(top: 18, right: 22, child: _disc(16, t.lime)),
                    Positioned(
                      bottom: 26,
                      left: 18,
                      child: _disc(10, Colors.white.withValues(alpha: 0.7)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  static Widget _disc(double size, Color colour) => Container(
        width: size,
        height: size,
        decoration: BoxDecoration(shape: BoxShape.circle, color: colour),
      );
}

/// A segment per page, filled up to the current one.
class _Progress extends StatelessWidget {
  const _Progress({required this.index, required this.total});

  final int index;
  final int total;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    final AppLocalizations l10n = AppLocalizations.of(context);

    return Row(
      children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              for (int i = 0; i < total; i++)
                Expanded(
                  child: AnimatedContainer(
                    duration: AppMotion.quick,
                    curve: AppMotion.enter,
                    height: i == index ? 6 : 5,
                    margin: const EdgeInsetsDirectional.only(end: 6),
                    decoration: BoxDecoration(
                      color: i <= index ? t.primaryBright : t.border,
                      borderRadius: NxRadius.pillAll,
                    ),
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(width: NxSpace.xs),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            color: t.surface,
            borderRadius: NxRadius.pillAll,
            border: Border.all(color: t.border),
          ),
          child: Text(
            l10n.permStepCount(index + 1, total),
            style: NxType.caption.copyWith(
              color: t.ink,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ],
    );
  }
}
