import 'package:flutter/painting.dart';

/// Elevation, as shadows. Soft and diffused, never an offset slab: a card
/// lifts off the ground, it does not sit on a ledge.
///
/// On the night palette elevation is a border and a lighter surface instead
/// (see `NxTokens.cardShadow`): shadows vanish on a dark ground.
abstract final class NxShadows {
  /// Resting cards on the day palette: barely there.
  static const List<BoxShadow> card = <BoxShadow>[
    BoxShadow(
      color: Color(0x0F111511),
      blurRadius: 12,
      offset: Offset(0, 2),
    ),
  ];

  /// Things that float over content: the tab bar, map buttons, a sheet.
  static const List<BoxShadow> floating = <BoxShadow>[
    BoxShadow(
      color: Color(0x33111511),
      blurRadius: 24,
      spreadRadius: -6,
      offset: Offset(0, 10),
    ),
  ];

  /// Under a hero card, tinted with its own colour so it glows rather than
  /// darkens.
  static List<BoxShadow> glow(Color colour) => <BoxShadow>[
        BoxShadow(
          color: colour.withValues(alpha: 0.24),
          blurRadius: 24,
          spreadRadius: -8,
          offset: const Offset(0, 12),
        ),
      ];

  /// Under a bar pinned to the foot of the screen, cast upwards.
  static const List<BoxShadow> bar = <BoxShadow>[
    BoxShadow(color: Color(0x14111511), blurRadius: 18, offset: Offset(0, -4)),
  ];

  static const List<BoxShadow> none = <BoxShadow>[];
}
