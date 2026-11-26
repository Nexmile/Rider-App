import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_shadows.dart';

/// The semantic colours and elevation a screen reads, for the day palette
/// and the night palette. Screens ask for a role (`ink`, `action`), never a
/// raw colour, so dark mode is a property of the theme and not of each
/// screen.
@immutable
class NxTokens extends ThemeExtension<NxTokens> {
  const NxTokens({
    required this.ground,
    required this.surface,
    required this.surfaceMuted,
    required this.hairline,
    required this.border,
    required this.ink,
    required this.inkMuted,
    required this.inkFaint,
    required this.primary,
    required this.primaryBright,
    required this.onPrimary,
    required this.primarySoft,
    required this.lime,
    required this.onLime,
    required this.action,
    required this.actionText,
    required this.onAction,
    required this.actionSoft,
    required this.danger,
    required this.dangerSoft,
    required this.dangerBorder,
    required this.info,
    required this.infoInk,
    required this.infoSoft,
    required this.night,
    required this.nightDeep,
    required this.onNight,
    required this.heroStart,
    required this.heroMid,
    required this.heroEnd,
    required this.darkHeroStart,
    required this.darkHeroEnd,
    required this.cardShadow,
  });

  /// The screen behind the cards.
  final Color ground;

  /// A card.
  final Color surface;

  /// A well inside a card: an icon tile, a skeleton.
  final Color surfaceMuted;

  /// The line between rows of one card.
  final Color hairline;

  /// Around inputs and outlined buttons.
  final Color border;

  final Color ink;
  final Color inkMuted;
  final Color inkFaint;

  /// Online, money earned, success. [primary] for buttons and text,
  /// [primaryBright] for pins, dots and progress.
  final Color primary;
  final Color primaryBright;
  final Color onPrimary;
  final Color primarySoft;

  /// The highlight on a dark or green surface.
  final Color lime;
  final Color onLime;

  /// Action needed: cash, the live step, a timer. [action] fills; text and
  /// icons on a light card use [actionText], which passes contrast.
  final Color action;
  final Color actionText;
  final Color onAction;
  final Color actionSoft;

  /// Reject, error.
  final Color danger;
  final Color dangerSoft;
  final Color dangerBorder;

  /// A hint. Never money.
  final Color info;
  final Color infoInk;
  final Color infoSoft;

  /// The dark surface: the tab bar, the offer sheet, the black buttons.
  final Color night;
  final Color nightDeep;
  final Color onNight;

  /// The green hero: earnings, the profile cover.
  final Color heroStart;
  final Color heroMid;
  final Color heroEnd;

  /// The dark hero: the payout summary.
  final Color darkHeroStart;
  final Color darkHeroEnd;

  final List<BoxShadow> cardShadow;

  LinearGradient get heroGradient => LinearGradient(
        begin: const Alignment(-0.9, -1),
        end: const Alignment(0.9, 1),
        colors: <Color>[heroStart, heroMid, heroEnd],
        stops: const <double>[0, 0.65, 1],
      );

  LinearGradient get darkHeroGradient => LinearGradient(
        begin: const Alignment(-0.6, -1),
        end: const Alignment(0.6, 1),
        colors: <Color>[darkHeroStart, darkHeroEnd],
      );

  static const NxTokens light = NxTokens(
    ground: NxColors.ground,
    surface: NxColors.white,
    surfaceMuted: NxColors.hairline,
    hairline: NxColors.hairline,
    border: NxColors.border,
    ink: NxColors.ink,
    inkMuted: NxColors.inkMuted,
    inkFaint: NxColors.inkFaint,
    primary: NxColors.green700,
    primaryBright: NxColors.green600,
    onPrimary: NxColors.white,
    primarySoft: NxColors.green50,
    lime: NxColors.lime,
    onLime: NxColors.green900,
    action: NxColors.orange400,
    actionText: NxColors.orange700,
    onAction: NxColors.orangeInk,
    actionSoft: NxColors.orange50,
    danger: NxColors.red700,
    dangerSoft: NxColors.red50,
    dangerBorder: NxColors.red200,
    info: NxColors.blue700,
    infoInk: NxColors.blue900,
    infoSoft: NxColors.blue50,
    night: NxColors.night,
    nightDeep: NxColors.nightDeep,
    onNight: NxColors.white,
    heroStart: NxColors.green500,
    heroMid: NxColors.green800,
    heroEnd: NxColors.green900,
    darkHeroStart: NxColors.nightGreen,
    darkHeroEnd: NxColors.nightDeep,
    cardShadow: NxShadows.card,
  );

  static const NxTokens dark = NxTokens(
    ground: NxColors.night0,
    surface: NxColors.night1,
    surfaceMuted: NxColors.night2,
    hairline: NxColors.night2,
    border: NxColors.night3,
    ink: NxColors.nightInk,
    inkMuted: NxColors.nightInkMuted,
    inkFaint: NxColors.nightInkFaint,
    primary: NxColors.green300,
    primaryBright: NxColors.green300,
    onPrimary: NxColors.green900,
    primarySoft: Color(0xFF1B2A15),
    lime: NxColors.lime,
    onLime: NxColors.green900,
    action: NxColors.orange400,
    actionText: NxColors.orange400,
    onAction: NxColors.orangeInk,
    actionSoft: Color(0xFF33200F),
    danger: NxColors.red400,
    dangerSoft: Color(0xFF3A1A18),
    dangerBorder: Color(0xFF5A2622),
    info: NxColors.blue400,
    infoInk: NxColors.blue400,
    infoSoft: Color(0xFF14243A),
    night: Color(0xFF2A332A),
    nightDeep: NxColors.nightDeep,
    onNight: NxColors.white,
    heroStart: NxColors.green600,
    heroMid: NxColors.green800,
    heroEnd: NxColors.green900,
    darkHeroStart: NxColors.nightGreen,
    darkHeroEnd: NxColors.nightDeep,
    cardShadow: NxShadows.none,
  );

  @override
  NxTokens copyWith({Color? ground, Color? surface, Color? ink}) => NxTokens(
        ground: ground ?? this.ground,
        surface: surface ?? this.surface,
        surfaceMuted: surfaceMuted,
        hairline: hairline,
        border: border,
        ink: ink ?? this.ink,
        inkMuted: inkMuted,
        inkFaint: inkFaint,
        primary: primary,
        primaryBright: primaryBright,
        onPrimary: onPrimary,
        primarySoft: primarySoft,
        lime: lime,
        onLime: onLime,
        action: action,
        actionText: actionText,
        onAction: onAction,
        actionSoft: actionSoft,
        danger: danger,
        dangerSoft: dangerSoft,
        dangerBorder: dangerBorder,
        info: info,
        infoInk: infoInk,
        infoSoft: infoSoft,
        night: night,
        nightDeep: nightDeep,
        onNight: onNight,
        heroStart: heroStart,
        heroMid: heroMid,
        heroEnd: heroEnd,
        darkHeroStart: darkHeroStart,
        darkHeroEnd: darkHeroEnd,
        cardShadow: cardShadow,
      );

  @override
  NxTokens lerp(NxTokens? other, double t) {
    if (other == null) return this;
    Color c(Color a, Color b) => Color.lerp(a, b, t)!;
    return NxTokens(
      ground: c(ground, other.ground),
      surface: c(surface, other.surface),
      surfaceMuted: c(surfaceMuted, other.surfaceMuted),
      hairline: c(hairline, other.hairline),
      border: c(border, other.border),
      ink: c(ink, other.ink),
      inkMuted: c(inkMuted, other.inkMuted),
      inkFaint: c(inkFaint, other.inkFaint),
      primary: c(primary, other.primary),
      primaryBright: c(primaryBright, other.primaryBright),
      onPrimary: c(onPrimary, other.onPrimary),
      primarySoft: c(primarySoft, other.primarySoft),
      lime: c(lime, other.lime),
      onLime: c(onLime, other.onLime),
      action: c(action, other.action),
      actionText: c(actionText, other.actionText),
      onAction: c(onAction, other.onAction),
      actionSoft: c(actionSoft, other.actionSoft),
      danger: c(danger, other.danger),
      dangerSoft: c(dangerSoft, other.dangerSoft),
      dangerBorder: c(dangerBorder, other.dangerBorder),
      info: c(info, other.info),
      infoInk: c(infoInk, other.infoInk),
      infoSoft: c(infoSoft, other.infoSoft),
      night: c(night, other.night),
      nightDeep: c(nightDeep, other.nightDeep),
      onNight: c(onNight, other.onNight),
      heroStart: c(heroStart, other.heroStart),
      heroMid: c(heroMid, other.heroMid),
      heroEnd: c(heroEnd, other.heroEnd),
      darkHeroStart: c(darkHeroStart, other.darkHeroStart),
      darkHeroEnd: c(darkHeroEnd, other.darkHeroEnd),
      cardShadow: t < 0.5 ? cardShadow : other.cardShadow,
    );
  }
}

/// `context.nx.ink`, `context.nx.primary` and so on.
extension NxTokensContext on BuildContext {
  NxTokens get nx => Theme.of(this).extension<NxTokens>() ?? NxTokens.light;
}
