import 'package:flutter/widgets.dart';

/// Spacing on a 4/8 grid. Screens use these names, never raw numbers.
abstract final class NxSpace {
  static const double xxs = 4;
  static const double xs = 8;
  static const double sm = 12;
  static const double md = 16;
  static const double lg = 20;
  static const double xl = 24;
  static const double xxl = 32;
  static const double xxxl = 48;

  /// The side gutter of every screen.
  static const double screen = 16;

  /// The height of every primary tap target. A rider in gloves on a bike
  /// mount misses anything smaller.
  static const double tapTarget = 56;

  static const EdgeInsets screenPadding =
      EdgeInsets.symmetric(horizontal: screen);

  static const EdgeInsets cardPadding = EdgeInsets.all(md);
}
