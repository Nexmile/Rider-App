import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/push/push_service.dart';
import '../../../../core/design/design.dart';
import '../../../../core/services/device_setup.dart';
import '../../../../generated/l10n/app_localizations.dart';

/// Phone brands that close background apps unless Autostart is switched on,
/// a setting no app can read or change for the rider.
const Set<String> _autostartBrands = <String>{
  'xiaomi',
  'redmi',
  'poco',
  'oppo',
  'realme',
  'vivo',
  'iqoo',
  'oneplus',
  'samsung',
};

const String _autostartKey = 'nexmile.autostart_confirmed';

/// Where each setup step stands.
@immutable
class PhoneSetupStatus {
  const PhoneSetupStatus({
    required this.notifications,
    required this.fullScreen,
    this.overlay = true,
    required this.location,
    required this.battery,
    required this.brand,
    required this.autostartConfirmed,
  });

  final bool notifications;
  final bool fullScreen;

  /// "Display over other apps", which lets a new order bring the app to the
  /// front. Defaults to done so a status built without it asks for nothing.
  final bool overlay;
  final bool location;
  final bool battery;

  /// The phone's maker, or empty off Android.
  final String brand;
  final bool autostartConfirmed;

  bool get needsAutostart =>
      _autostartBrands.contains(brand.trim().toLowerCase());

  /// Steps still to do. Autostart counts only on the brands that need it.
  int get missing => <bool>[
        notifications,
        fullScreen,
        overlay,
        location,
        battery,
        if (needsAutostart) autostartConfirmed,
      ].where((bool done) => !done).length;

  static Future<PhoneSetupStatus> check(
    PushService push, {
    DeviceSetup device = const DeviceSetup(),
  }) async {
    final LocationPermission permission = await _safe(
      Geolocator.checkPermission,
      LocationPermission.denied,
    );
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return PhoneSetupStatus(
      notifications: await _safe(push.notificationsAllowed, false),
      fullScreen: await device.canUseFullScreenIntent(),
      overlay: await device.canDrawOverApps(),
      location: permission == LocationPermission.whileInUse ||
          permission == LocationPermission.always,
      battery: await device.isIgnoringBatteryOptimizations(),
      brand: await device.manufacturer(),
      autostartConfirmed: prefs.getBool(_autostartKey) ?? false,
    );
  }

  static Future<T> _safe<T>(Future<T> Function() read, T fallback) async {
    try {
      return await read();
    } catch (_) {
      return fallback;
    }
  }
}

/// One guided screen for every phone setting an order alert depends on.
///
/// A rider who finishes onboarding with two of these missing looks, from the
/// outside, exactly like a backend that does not send orders, so each step
/// says plainly why it matters and takes the rider straight to the setting.
/// The list re-checks itself whenever the rider comes back from Settings.
class PhoneSetupScreen extends StatefulWidget {
  const PhoneSetupScreen({super.key});

  static Future<void> open(BuildContext context) => Navigator.of(context).push(
        MaterialPageRoute<void>(builder: (_) => const PhoneSetupScreen()),
      );

  @override
  State<PhoneSetupScreen> createState() => _PhoneSetupScreenState();
}

class _PhoneSetupScreenState extends State<PhoneSetupScreen>
    with WidgetsBindingObserver {
  static const DeviceSetup _device = DeviceSetup();
  PhoneSetupStatus? _status;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _refresh();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) _refresh();
  }

  Future<void> _refresh() async {
    final PhoneSetupStatus status =
        await PhoneSetupStatus.check(context.read<PushService>());
    if (mounted) setState(() => _status = status);
  }

  Future<void> _then(Future<Object?> action) async {
    await action;
    await _refresh();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NxTokens t = context.nx;
    final PhoneSetupStatus? s = _status;
    final PushService push = context.read<PushService>();

    return Scaffold(
      backgroundColor: t.ground,
      appBar: AppBar(
        title: Text(l10n.setupTitle),
        backgroundColor: t.ground,
        surfaceTintColor: Colors.transparent,
      ),
      body: s == null
          ? Center(child: CircularProgressIndicator(color: t.primary))
          : ListView(
              padding: const EdgeInsets.fromLTRB(
                NxSpace.screen,
                NxSpace.xs,
                NxSpace.screen,
                NxSpace.xxl,
              ),
              children: <Widget>[
                Text(
                  l10n.setupIntro,
                  style: NxType.body.copyWith(color: t.inkMuted, height: 1.45),
                ),
                const SizedBox(height: NxSpace.lg),
                _Step(
                  icon: Icons.notifications_active_outlined,
                  title: l10n.setupNotifications,
                  body: l10n.setupNotificationsBody,
                  done: s.notifications,
                  actionLabel: l10n.setupAllow,
                  onAction: () => _then(push.requestPermission()),
                ),
                _Step(
                  icon: Icons.fullscreen_rounded,
                  title: l10n.setupFullScreen,
                  body: l10n.setupFullScreenBody,
                  done: s.fullScreen,
                  actionLabel: l10n.setupOpenSettings,
                  onAction: () => _then(_device.openFullScreenIntentSettings()),
                ),
                _Step(
                  icon: Icons.layers_outlined,
                  title: l10n.setupOverlay,
                  body: l10n.setupOverlayBody,
                  done: s.overlay,
                  actionLabel: l10n.setupOpenSettings,
                  onAction: () => _then(_device.openDrawOverAppsSettings()),
                ),
                _Step(
                  icon: Icons.my_location_rounded,
                  title: l10n.setupLocation,
                  body: l10n.setupLocationBody,
                  done: s.location,
                  actionLabel: l10n.setupAllow,
                  onAction: () => _then(() async {
                    final LocationPermission now =
                        await Geolocator.checkPermission();
                    if (now == LocationPermission.deniedForever) {
                      await Geolocator.openAppSettings();
                    } else {
                      await Geolocator.requestPermission();
                    }
                  }()),
                ),
                _Step(
                  icon: Icons.battery_charging_full_rounded,
                  title: l10n.setupBattery,
                  body: l10n.setupBatteryBody,
                  done: s.battery,
                  actionLabel: l10n.setupAllow,
                  onAction: () =>
                      _then(_device.requestIgnoreBatteryOptimizations()),
                ),
                if (s.needsAutostart)
                  _Step(
                    icon: Icons.rocket_launch_outlined,
                    title: l10n.setupAutostart,
                    body: l10n.setupAutostartBody(_titleCase(s.brand)),
                    done: s.autostartConfirmed,
                    actionLabel: l10n.setupOpenSettings,
                    onAction: () => _then(_device.openAppSettings()),
                    // No app can read this setting, so the rider says so.
                    secondaryLabel: l10n.setupMarkDone,
                    onSecondary: () => _then(() async {
                      final SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      await prefs.setBool(_autostartKey, true);
                    }()),
                  ),
              ],
            ),
    );
  }

  static String _titleCase(String brand) => brand.isEmpty
      ? brand
      : brand[0].toUpperCase() + brand.substring(1).toLowerCase();
}

class _Step extends StatelessWidget {
  const _Step({
    required this.icon,
    required this.title,
    required this.body,
    required this.done,
    required this.actionLabel,
    required this.onAction,
    this.secondaryLabel,
    this.onSecondary,
  });

  final IconData icon;
  final String title;
  final String body;
  final bool done;
  final String actionLabel;
  final VoidCallback onAction;
  final String? secondaryLabel;
  final VoidCallback? onSecondary;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    final AppLocalizations l10n = AppLocalizations.of(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: NxSpace.sm - 2),
      child: NxCard(
        color: done ? t.primarySoft : null,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: done ? t.primaryBright : t.surfaceMuted,
                borderRadius: NxRadius.smallAll,
              ),
              child: Icon(
                done ? Icons.check_rounded : icon,
                size: 22,
                color: done ? t.onPrimary : t.ink,
              ),
            ),
            const SizedBox(width: NxSpace.sm + 2),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: NxType.titleSmall.copyWith(
                      color: t.ink,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    body,
                    style: NxType.bodySmall.copyWith(
                      fontSize: 14,
                      color: t.inkMuted,
                      height: 1.4,
                    ),
                  ),
                  if (!done) ...<Widget>[
                    const SizedBox(height: NxSpace.sm - 2),
                    Wrap(
                      spacing: NxSpace.xs,
                      runSpacing: NxSpace.xs,
                      children: <Widget>[
                        FilledButton(
                          onPressed: onAction,
                          style: FilledButton.styleFrom(
                            backgroundColor: t.primary,
                            foregroundColor: t.onPrimary,
                            shape: const RoundedRectangleBorder(
                              borderRadius: NxRadius.controlAll,
                            ),
                          ),
                          child: Text(actionLabel),
                        ),
                        if (secondaryLabel != null)
                          OutlinedButton(
                            onPressed: onSecondary,
                            style: OutlinedButton.styleFrom(
                              foregroundColor: t.ink,
                              side: BorderSide(color: t.border, width: 1.4),
                              shape: const RoundedRectangleBorder(
                                borderRadius: NxRadius.controlAll,
                              ),
                            ),
                            child: Text(secondaryLabel!),
                          ),
                      ],
                    ),
                  ] else
                    Padding(
                      padding: const EdgeInsets.only(top: NxSpace.xs - 2),
                      child: NxStatusChip(
                        label: l10n.setupDoneStep,
                        tone: NxTone.success,
                        icon: Icons.check_rounded,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// "Finish phone setup — 2 left", on the board until every step is done.
/// Re-checks on resume, so it disappears the moment the last setting lands.
class PhoneSetupBanner extends StatefulWidget {
  const PhoneSetupBanner({super.key});

  @override
  State<PhoneSetupBanner> createState() => _PhoneSetupBannerState();
}

class _PhoneSetupBannerState extends State<PhoneSetupBanner>
    with WidgetsBindingObserver {
  int _missing = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _refresh();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) _refresh();
  }

  Future<void> _refresh() async {
    // Only Android has these settings; elsewhere the banner never shows.
    if (defaultTargetPlatform != TargetPlatform.android) return;
    final PhoneSetupStatus status =
        await PhoneSetupStatus.check(context.read<PushService>());
    if (mounted) setState(() => _missing = status.missing);
  }

  @override
  Widget build(BuildContext context) {
    if (_missing == 0) return const SizedBox.shrink();
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NxTokens t = context.nx;

    return Padding(
      padding: const EdgeInsets.only(bottom: NxSpace.md),
      child: Material(
        color: t.actionSoft,
        borderRadius: NxRadius.cardAll,
        child: InkWell(
          borderRadius: NxRadius.cardAll,
          onTap: () async {
            await PhoneSetupScreen.open(context);
            await _refresh();
          },
          child: Padding(
            padding: const EdgeInsets.all(NxSpace.sm + 2),
            child: Row(
              children: <Widget>[
                Icon(Icons.phonelink_setup_rounded, color: t.actionText),
                const SizedBox(width: NxSpace.sm),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        l10n.setupBannerTitle,
                        style: NxType.titleSmall.copyWith(
                          color: t.ink,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        l10n.setupBannerBody('$_missing'),
                        style: NxType.bodySmall.copyWith(color: t.inkMuted),
                      ),
                    ],
                  ),
                ),
                Icon(Icons.chevron_right_rounded, color: t.inkMuted),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
