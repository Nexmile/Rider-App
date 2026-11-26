import 'package:flutter/widgets.dart';

/// Corner radii. Three sizes, used by role.
abstract final class NxRadius {
  /// Cards and grouped lists.
  static const double card = 22;

  /// Hero cards and the tab bar.
  static const double hero = 26;

  /// Buttons, inputs, the swipe track.
  static const double control = 14;

  /// Small tiles inside a card: icon wells, thumbnails.
  static const double small = 13;

  /// The top of a bottom sheet.
  static const double sheet = 28;

  /// Chips and pills.
  static const double pill = 999;

  static const BorderRadius cardAll = BorderRadius.all(Radius.circular(card));
  static const BorderRadius heroAll = BorderRadius.all(Radius.circular(hero));
  static const BorderRadius controlAll =
      BorderRadius.all(Radius.circular(control));
  static const BorderRadius smallAll = BorderRadius.all(Radius.circular(small));
  static const BorderRadius pillAll = BorderRadius.all(Radius.circular(pill));
  static const BorderRadius sheetTop =
      BorderRadius.vertical(top: Radius.circular(sheet));
}
