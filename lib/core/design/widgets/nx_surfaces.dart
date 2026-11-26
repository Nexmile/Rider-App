import 'package:flutter/material.dart';

import '../../motion/app_motion.dart';
import '../app_radius.dart';
import '../app_shadows.dart';
import '../app_spacing.dart';
import '../app_tokens.dart';
import '../app_typography.dart';

/// A white card on the grey ground: hairline border, soft shadow, radius 20.
/// The default container for anything that is not the screen's one hero.
class NxCard extends StatelessWidget {
  const NxCard({
    super.key,
    required this.child,
    this.padding = NxSpace.cardPadding,
    this.onTap,
    this.color,
    this.borderColor,
  });

  final Widget child;
  final EdgeInsetsGeometry padding;
  final VoidCallback? onTap;

  /// A tinted card, for the rare state that needs one (cash, a warning).
  final Color? color;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    final bool isDark = Theme.of(context).brightness == Brightness.dark;
    // Day: white on grey with a breath of shadow, no outline. Night: an
    // outline, since a shadow vanishes on a dark ground.
    final Color? outline = borderColor ?? (isDark ? t.border : null);
    final BoxDecoration shell = BoxDecoration(
      color: color ?? t.surface,
      borderRadius: NxRadius.cardAll,
      border: outline == null ? null : Border.all(color: outline, width: 1.5),
      boxShadow: t.cardShadow,
    );
    final Widget body = Padding(padding: padding, child: child);
    if (onTap == null) return DecoratedBox(decoration: shell, child: body);
    return Pressable(
      onTap: onTap,
      child: Material(
        color: Colors.transparent,
        borderRadius: NxRadius.cardAll,
        child: InkWell(
          onTap: onTap,
          borderRadius: NxRadius.cardAll,
          child: Ink(decoration: shell, child: body),
        ),
      ),
    );
  }
}

/// The one rich card on a screen: a green gradient with a quiet pattern,
/// white text, a soft glow. Earnings, duty when online, the payout summary.
class NxHeroCard extends StatelessWidget {
  const NxHeroCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(NxSpace.lg),
    this.onTap,
    this.gradient,
    this.glow,
  });

  final Widget child;
  final EdgeInsetsGeometry padding;
  final VoidCallback? onTap;

  /// Defaults to the theme's hero green.
  final Gradient? gradient;

  /// The colour of the glow under it; defaults to the gradient's end.
  final Color? glow;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    final bool isDark = Theme.of(context).brightness == Brightness.dark;
    final Gradient fill = gradient ?? t.heroGradient;
    final BoxDecoration shell = BoxDecoration(
      gradient: fill,
      borderRadius: NxRadius.heroAll,
      boxShadow: isDark ? NxShadows.none : NxShadows.glow(glow ?? t.heroMid),
    );
    final Widget body = ClipRRect(
      borderRadius: NxRadius.heroAll,
      child: CustomPaint(
        painter: const _HeroPattern(),
        child: Padding(
          padding: padding,
          child: DefaultTextStyle.merge(
            style: const TextStyle(color: Colors.white),
            child: IconTheme.merge(
              data: const IconThemeData(color: Colors.white),
              child: child,
            ),
          ),
        ),
      ),
    );
    if (onTap == null) return DecoratedBox(decoration: shell, child: body);
    return Pressable(
      onTap: onTap,
      child: Material(
        color: Colors.transparent,
        borderRadius: NxRadius.heroAll,
        child: InkWell(
          onTap: onTap,
          borderRadius: NxRadius.heroAll,
          child: Ink(decoration: shell, child: body),
        ),
      ),
    );
  }
}

/// A ring off the top corner and a soft lime disc at the foot: enough
/// texture to lift the gradient, never enough to fight the numbers on it.
class _HeroPattern extends CustomPainter {
  const _HeroPattern();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(
      Offset(size.width + 10, 40),
      86,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 28
        ..color = Colors.white.withValues(alpha: 0.06),
    );
    canvas.drawCircle(
      Offset(size.width - 70, size.height + 2),
      70,
      Paint()..color = const Color(0xFFB8F171).withValues(alpha: 0.10),
    );
  }

  @override
  bool shouldRepaint(_HeroPattern oldDelegate) => false;
}

/// A small heading over a group of cards, with an optional action at the end.
class NxSectionHeader extends StatelessWidget {
  const NxSectionHeader({
    super.key,
    required this.title,
    this.action,
    this.onAction,
  });

  final String title;
  final String? action;
  final VoidCallback? onAction;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(
        NxSpace.xxs,
        0,
        NxSpace.xxs,
        NxSpace.xs,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: Text(
              title.toUpperCase(),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: NxType.caption.copyWith(
                color: t.inkMuted,
                fontWeight: FontWeight.w800,
                letterSpacing: 0.7,
              ),
            ),
          ),
          if (action != null)
            TextButton(
              onPressed: onAction,
              style: TextButton.styleFrom(
                minimumSize: const Size(0, 36),
                padding: const EdgeInsets.symmetric(horizontal: NxSpace.xs),
              ),
              child: Text(action!),
            ),
        ],
      ),
    );
  }
}

/// Rows that belong together in one card, divided by hairlines: a settings
/// page, not a stack of separate cards.
class NxListGroup extends StatelessWidget {
  const NxListGroup({super.key, this.title, required this.children});

  final String? title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        if (title != null) NxSectionHeader(title: title!),
        DecoratedBox(
          decoration: BoxDecoration(
            color: t.surface,
            borderRadius: NxRadius.cardAll,
            border: Theme.of(context).brightness == Brightness.dark
                ? Border.all(color: t.border, width: 1.5)
                : null,
            boxShadow: t.cardShadow,
          ),
          child: ClipRRect(
            borderRadius: NxRadius.cardAll,
            child: Column(
              children: <Widget>[
                for (int i = 0; i < children.length; i++) ...<Widget>[
                  if (i > 0) Divider(height: 1, color: t.hairline),
                  children[i],
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }
}

/// One row of an [NxListGroup]: an icon well, a title, an optional second
/// line, and whatever belongs at the end (a chip, a chevron, a value).
class NxListTile extends StatelessWidget {
  const NxListTile({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.iconColor,
    this.titleColor,
    this.subtitleDirection,
  });

  final IconData icon;
  final String title;
  final String? subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;
  final Color? iconColor;
  final Color? titleColor;

  /// For a subtitle that is a number, an email or a plate: left to right in
  /// every language.
  final TextDirection? subtitleDirection;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    final Color tint = iconColor ?? t.primary;
    final Widget row = ConstrainedBox(
      constraints: const BoxConstraints(minHeight: NxSpace.tapTarget + 8),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(
          NxSpace.md,
          NxSpace.sm,
          NxSpace.sm,
          NxSpace.sm,
        ),
        child: Row(
          children: <Widget>[
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: tint.withValues(alpha: 0.12),
                borderRadius: NxRadius.smallAll,
              ),
              child: Icon(icon, size: 20, color: tint),
            ),
            const SizedBox(width: NxSpace.sm),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: NxType.titleSmall.copyWith(
                      fontSize: 15,
                      color: titleColor ?? t.ink,
                    ),
                  ),
                  if (subtitle != null && subtitle!.isNotEmpty) ...<Widget>[
                    const SizedBox(height: 2),
                    Text(
                      subtitle!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textDirection: subtitleDirection,
                      style: NxType.bodySmall.copyWith(color: t.inkMuted),
                    ),
                  ],
                ],
              ),
            ),
            if (trailing != null) ...<Widget>[
              const SizedBox(width: NxSpace.xs),
              trailing!,
            ],
            if (onTap != null)
              Icon(Icons.chevron_right_rounded, color: t.inkFaint),
          ],
        ),
      ),
    );
    if (onTap == null) return row;
    return Material(
      color: Colors.transparent,
      child: InkWell(onTap: onTap, child: row),
    );
  }
}

/// A bottom sheet with the app's shape and a drag handle.
abstract final class NxBottomSheet {
  static Future<T?> show<T>(
    BuildContext context, {
    required WidgetBuilder builder,
    bool isScrollControlled = true,
  }) =>
      showModalBottomSheet<T>(
        context: context,
        isScrollControlled: isScrollControlled,
        useSafeArea: true,
        showDragHandle: true,
        builder: builder,
      );
}
