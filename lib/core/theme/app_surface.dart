import 'package:flutter/material.dart';

import '../motion/app_motion.dart';
import '../design/app_shadows.dart';
import 'app_colors.dart';
import '../design/app_tokens.dart';

/// Depth, for a palette that has to work on both grounds.
///
/// The app was built on hairline outlines — every card the same 1px box on the
/// same flat field — which reads as a form, not as a product someone uses at
/// speed. These give the same cards a soft, brand-tinted lift instead, so the
/// eye can tell what sits on top of what.
///
/// The shadows are green rather than grey. A neutral drop shadow under a green
/// accent on a warm-white ground reads as dirt; borrowing the brand hue at
/// very low alpha keeps the shade feeling like part of the same light.
class AppSurface {
  const AppSurface._();

  /// Radii. Larger than the old 16/22 — a food app is soft-cornered, and at
  /// this size the difference between a card and a button is legible at a
  /// glance rather than on inspection.
  static const double radiusSmall = 14;
  static const double radius = 20;
  static const double radiusLarge = 28;

  /// Resting elevation for a card in a list.
  // Everything below now reads the design system's tokens, so screens not
  // yet moved onto the Nx components already get its white cards and soft
  // shadows instead of tinted panels on a ledge.

  static List<BoxShadow> card(BuildContext context) => context.nx.cardShadow;

  /// A glow in [accent] on the day palette; nothing at night.
  static List<BoxShadow> hero(BuildContext context, Color accent) =>
      Theme.of(context).brightness == Brightness.dark
          ? NxShadows.none
          : NxShadows.glow(accent);

  static Color line(BuildContext context) => context.nx.hairline;

  /// Kept for older call sites: a plain card colour, no tint.
  static Gradient wash(BuildContext context, Color accent) {
    final Color surface = context.nx.surface;
    return LinearGradient(colors: <Color>[surface, surface]);
  }

  /// A white card. An [accent] is an outline in that colour, not a tinted
  /// panel: colour is kept for meaning.
  static BoxDecoration decoration(
    BuildContext context, {
    Color? accent,
    double? radius,
    bool elevated = true,
  }) {
    final NxTokens t = context.nx;
    final bool dark = Theme.of(context).brightness == Brightness.dark;
    final BorderRadius shape =
        BorderRadius.circular(radius ?? AppSurface.radius);
    return BoxDecoration(
      color: t.surface,
      borderRadius: shape,
      border: accent != null
          ? Border.all(color: accent.withValues(alpha: 0.75), width: 1.6)
          : dark
              ? Border.all(color: t.border, width: 1.5)
              : null,
      boxShadow: elevated ? t.cardShadow : null,
    );
  }
}

class SurfaceCard extends StatelessWidget {
  const SurfaceCard({
    super.key,
    required this.child,
    this.accent,
    this.padding = const EdgeInsets.all(18),
    this.onTap,
    this.radius,
    this.elevated = true,
  });

  final Widget child;

  /// Tints the surface, the border and the shadow. Null is the resting card.
  final Color? accent;

  final EdgeInsetsGeometry padding;
  final VoidCallback? onTap;
  final double? radius;
  final bool elevated;

  @override
  Widget build(BuildContext context) {
    final BorderRadius shape =
        BorderRadius.circular(radius ?? AppSurface.radius);

    final Widget body = DecoratedBox(
      decoration: AppSurface.decoration(
        context,
        accent: accent,
        radius: radius,
        elevated: elevated,
      ),
      child: Padding(padding: padding, child: child),
    );

    if (onTap == null) return body;

    return Pressable(
      onTap: onTap,
      borderRadius: shape,
      // The ripple still runs underneath, so the card reports the tap twice —
      // once physically as it presses in, once visually as the ink spreads.
      child: Material(
        color: Colors.transparent,
        borderRadius: shape,
        child: InkWell(
          onTap: onTap,
          borderRadius: shape,
          child: body,
        ),
      ),
    );
  }
}

/// The green-to-orange rule that marks off a screen's heading from its body.
///
/// Carries the full brand sweep, the same one under the splash lockup, so the
/// mark that opens the app and the rule under every headline are recognisably
/// the same gesture.
class BrandRule extends StatelessWidget {
  const BrandRule({super.key, this.width = 46, this.height = 4});

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: AppColors.brandGradient,
        borderRadius: BorderRadius.circular(height),
      ),
    );
  }
}

