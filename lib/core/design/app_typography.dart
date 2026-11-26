import 'package:flutter/material.dart';

/// The type scale. Plus Jakarta Sans throughout, bundled with the app.
///
/// Letter spacing is never negative: Tamil, Hindi and the other Indic scripts
/// join their letters, and a tightened line breaks the joins.
abstract final class NxType {
  static const String family = 'PlusJakartaSans';

  /// Digits that line up in columns and do not jiggle while a counter runs.
  static const List<FontFeature> tabular = <FontFeature>[
    FontFeature.tabularFigures(),
  ];

  /// Money and the numbers a rider is paid by. 32/800, tabular.
  static const TextStyle display = TextStyle(
    fontFamily: family,
    fontSize: 32,
    height: 1.15,
    fontWeight: FontWeight.w800,
    fontFeatures: tabular,
  );

  /// Screen titles and the big word on a hero card. 24/800.
  static const TextStyle headline = TextStyle(
    fontFamily: family,
    fontSize: 24,
    height: 1.25,
    fontWeight: FontWeight.w800,
  );

  /// Card titles. 20/700.
  static const TextStyle title = TextStyle(
    fontFamily: family,
    fontSize: 20,
    height: 1.3,
    fontWeight: FontWeight.w700,
  );

  /// Row titles, names. 16/700.
  static const TextStyle titleSmall = TextStyle(
    fontFamily: family,
    fontSize: 16,
    height: 1.35,
    fontWeight: FontWeight.w700,
  );

  /// Running text. 15/500.
  static const TextStyle body = TextStyle(
    fontFamily: family,
    fontSize: 15,
    height: 1.45,
    fontWeight: FontWeight.w500,
  );

  /// Secondary lines under a title. 13/500.
  static const TextStyle bodySmall = TextStyle(
    fontFamily: family,
    fontSize: 13,
    height: 1.4,
    fontWeight: FontWeight.w500,
  );

  /// Labels, chips, captions. 12/600.
  static const TextStyle caption = TextStyle(
    fontFamily: family,
    fontSize: 12,
    height: 1.35,
    fontWeight: FontWeight.w600,
  );

  /// Button labels. 16/700.
  static const TextStyle button = TextStyle(
    fontFamily: family,
    fontSize: 16,
    height: 1.25,
    fontWeight: FontWeight.w700,
  );

  /// Material's text theme, built from the scale, in [ink] and [muted].
  static TextTheme textTheme(Color ink, Color muted) => TextTheme(
        displayLarge: display.copyWith(fontSize: 40, color: ink),
        displayMedium: display.copyWith(fontSize: 36, color: ink),
        displaySmall: display.copyWith(color: ink),
        headlineLarge: headline.copyWith(fontSize: 28, color: ink),
        headlineMedium: headline.copyWith(color: ink),
        headlineSmall: headline.copyWith(fontSize: 22, color: ink),
        titleLarge: title.copyWith(color: ink),
        titleMedium: titleSmall.copyWith(color: ink),
        titleSmall: titleSmall.copyWith(fontSize: 15, color: ink),
        bodyLarge: body.copyWith(fontSize: 16, color: ink),
        bodyMedium: body.copyWith(color: ink),
        bodySmall: bodySmall.copyWith(color: muted),
        labelLarge: button.copyWith(fontSize: 15, color: ink),
        labelMedium: caption.copyWith(fontSize: 13, color: muted),
        labelSmall: caption.copyWith(color: muted),
      );
}
