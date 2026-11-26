import 'package:flutter/material.dart';

import '../motion/app_motion.dart';
import '../theme/app_colors.dart';
import '../theme/app_surface.dart';

/// A labelled value row: small caption above, prominent value below.
///
/// Tappable when [onTap] is given (and then shows a chevron), otherwise a plain
/// read-only field — which is what the profile screen needs, since the customer
/// profile is display-only until an edit screen exists.
///
/// The value shrinks to fit rather than wrapping, and can be forced into its
/// own text direction so an email or phone number stays left-to-right inside a
/// right-to-left layout.
class InfoTile extends StatelessWidget {
  const InfoTile({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    this.onTap,
    this.valueDirection,
    this.trailing,
    this.emphasise = true,
    this.grouped = false,
  });

  final IconData icon;
  final String label;
  final String value;
  final VoidCallback? onTap;
  final TextDirection? valueDirection;

  /// Rendered after the value — a "Verified" badge, for instance.
  final Widget? trailing;

  /// False renders the value in the muted colour, for placeholders such as
  /// "Not added".
  final bool emphasise;

  /// One row of a [TileGroup]: no card of its own, the group draws it.
  final bool grouped;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final bool isDark = theme.brightness == Brightness.dark;

    final Widget content = Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: <Widget>[
          Container(
            width: 38,
            height: 38,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: (isDark ? AppColors.greenLight : AppColors.greenDeep)
                  .withValues(alpha: isDark ? 0.16 : 0.11),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              size: 19,
              color: isDark ? AppColors.greenLight : AppColors.greenDeep,
            ),
          ),
          const SizedBox(width: 14),
          // A row that is only a status (no value) puts its chip beside the
          // label, rather than alone on a second line.
          if (value.isEmpty)
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      label,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  if (trailing != null) ...<Widget>[
                    const SizedBox(width: 8),
                    trailing!,
                  ],
                ],
              ),
            )
          else
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  label,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 2),
                Row(
                  children: <Widget>[
                    Flexible(
                      child: Directionality(
                        textDirection:
                            valueDirection ?? Directionality.of(context),
                        child: Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            alignment: AlignmentDirectional.centerStart,
                            child: Text(
                              value,
                              maxLines: 1,
                              softWrap: false,
                              style: theme.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.w700,
                                color: emphasise
                                    ? theme.colorScheme.onSurface
                                    : theme.colorScheme.onSurfaceVariant,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    if (trailing != null) ...<Widget>[
                      const SizedBox(width: 8),
                      trailing!,
                    ],
                  ],
                ),
              ],
            ),
          ),
          if (onTap != null)
            Icon(
              Icons.chevron_right_rounded,
              color: theme.colorScheme.onSurfaceVariant,
            ),
        ],
      ),
    );

    if (grouped) {
      return onTap == null
          ? content
          : Material(
              color: Colors.transparent,
              child: InkWell(onTap: onTap, child: content),
            );
    }

    final BorderRadius radius = BorderRadius.circular(AppSurface.radius);
    final BoxDecoration shell = AppSurface.decoration(
      context,
      radius: AppSurface.radius,
    );

    if (onTap == null) {
      return DecoratedBox(decoration: shell, child: content);
    }

    return Pressable(
      onTap: onTap,
      child: Material(
        color: Colors.transparent,
        borderRadius: radius,
        child: InkWell(
          onTap: onTap,
          borderRadius: radius,
          child: Ink(decoration: shell, child: content),
        ),
      ),
    );
  }
}

/// Small pill used for the account status and the "Verified" badge.
class StatusChip extends StatelessWidget {
  const StatusChip({super.key, required this.label, required this.tone});

  final String label;
  final StatusTone tone;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final bool isDark = theme.brightness == Brightness.dark;

    final Color base;
    switch (tone) {
      case StatusTone.positive:
        base = isDark ? AppColors.greenLight : AppColors.greenDeep;
      case StatusTone.warning:
        base = AppColors.orangeDeep;
      case StatusTone.negative:
        base = theme.colorScheme.error;
      case StatusTone.neutral:
        base = theme.colorScheme.onSurfaceVariant;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: base.withValues(alpha: isDark ? 0.18 : 0.12),
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: base.withValues(alpha: 0.38)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          // A dot ahead of the word, so the state is readable as colour before
          // it is readable as text — which is how a chip is actually used.
          Container(
            width: 6,
            height: 6,
            decoration: BoxDecoration(shape: BoxShape.circle, color: base),
          ),
          const SizedBox(width: 6),
          Flexible(
            child: Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.labelSmall?.copyWith(
                color: base,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

enum StatusTone { positive, warning, negative, neutral }

/// Rows that belong together, in one card under a small heading: the way a
/// settings page reads, rather than a stack of separate cards.
class TileGroup extends StatelessWidget {
  const TileGroup({super.key, this.title, required this.children});

  final String? title;

  /// Usually [InfoTile]s with `grouped: true`.
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        if (title != null)
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(6, 0, 6, 8),
            child: Text(
              title!,
              style: theme.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w800,
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
        DecoratedBox(
          decoration: AppSurface.decoration(context, radius: AppSurface.radius),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppSurface.radius),
            child: Column(
              children: <Widget>[
                for (int i = 0; i < children.length; i++) ...<Widget>[
                  if (i > 0)
                    Divider(
                      height: 1,
                      indent: 68,
                      color: AppSurface.line(context),
                    ),
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
