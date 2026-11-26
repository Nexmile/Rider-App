import 'package:flutter/material.dart';

/// The Nexmile Rider palette, as raw values, matched to the rider redesign
/// mockups.
///
/// Screens never read these directly: they read [NxTokens] from the theme,
/// which picks the day or night value. This file is where the values live,
/// so both palettes are tuned side by side.
///
/// Colour carries meaning, the same meaning everywhere:
/// * green: online, money earned, success;
/// * lime: the highlight on a dark or green surface (the selected tab, a
///   countdown ring, money already paid);
/// * orange: something needs the rider now (cash to collect, the live step,
///   a timer);
/// * red: reject, error, a refusal.
abstract final class NxColors {
  // Green. 700 is the working green for buttons and text; 600 for accents
  // and pins; the hero runs 500 → 800 → 900.
  static const Color green50 = Color(0xFFE8F6DC);
  static const Color green100 = Color(0xFFDCEFD0);
  static const Color green300 = Color(0xFF7CC453);
  static const Color green500 = Color(0xFF2FA812);
  static const Color green600 = Color(0xFF2A9A0F);
  static const Color green700 = Color(0xFF1F7A0A);
  static const Color green800 = Color(0xFF16610A);
  static const Color green900 = Color(0xFF0C3F06);

  // Lime: highlight on dark and green surfaces.
  static const Color lime = Color(0xFFB8F171);
  static const Color limeSoft = Color(0xFFE9FFB0);

  // Orange: fills at 400, text and icons on white at 700.
  static const Color orange50 = Color(0xFFFFF0E6);
  static const Color orange100 = Color(0xFFFFD2A8);
  static const Color orange400 = Color(0xFFFF7A2F);
  static const Color orange600 = Color(0xFFE8590C);
  static const Color orange700 = Color(0xFFC2410C);
  static const Color orangeInk = Color(0xFF1A0A00);

  // Red.
  static const Color red50 = Color(0xFFFDECEC);
  static const Color red200 = Color(0xFFF3C4C4);
  static const Color red400 = Color(0xFFF97066);
  static const Color red500 = Color(0xFFFF3B30);
  static const Color red700 = Color(0xFFB42318);

  // Blue: information only. Never money.
  static const Color blue50 = Color(0xFFEEF5FF);
  static const Color blue400 = Color(0xFF6CA6F5);
  static const Color blue700 = Color(0xFF1D4ED8);
  static const Color blue900 = Color(0xFF1E3A8A);

  // Day neutrals: a cool grey ground, white cards, green-tinted inks.
  static const Color ground = Color(0xFFF4F5F7);
  static const Color hairline = Color(0xFFEEF0EC);
  static const Color border = Color(0xFFE3E6E1);
  static const Color ink = Color(0xFF111511);
  static const Color inkMuted = Color(0xFF5B6258);
  static const Color inkFaint = Color(0xFF8A9086);

  // Dark surfaces used in both palettes: the tab bar, the offer sheet, the
  // payout summary.
  static const Color night = Color(0xFF111511);
  static const Color nightDeep = Color(0xFF0F1410);
  static const Color nightGreen = Color(0xFF1B2A17);

  // Night palette neutrals.
  static const Color night0 = Color(0xFF0B0E0B);
  static const Color night1 = Color(0xFF151A15);
  static const Color night2 = Color(0xFF1D241D);
  static const Color night3 = Color(0xFF2A322A);
  static const Color nightInk = Color(0xFFF2F5F0);
  static const Color nightInkMuted = Color(0xFFB2BAAE);
  static const Color nightInkFaint = Color(0xFF8C9488);

  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
}
