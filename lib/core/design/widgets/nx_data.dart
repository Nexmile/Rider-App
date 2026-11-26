import 'package:flutter/material.dart';

import '../../motion/app_motion.dart';
import '../app_radius.dart';
import '../app_spacing.dart';
import '../app_tokens.dart';
import '../app_typography.dart';
import 'nx_surfaces.dart';

/// What a colour means, so a chip or a stat says it the same way everywhere.
enum NxTone { success, action, danger, info, neutral }

extension NxToneColours on NxTone {
  /// For text and icons on a light card: passes contrast.
  Color colour(NxTokens t) => switch (this) {
        NxTone.success => t.primary,
        NxTone.action => t.actionText,
        NxTone.danger => t.danger,
        NxTone.info => t.info,
        NxTone.neutral => t.inkMuted,
      };

  /// For a filled surface: a button, the swipe track, a strip.
  Color fill(NxTokens t) => switch (this) {
        NxTone.success => t.primary,
        NxTone.action => t.action,
        NxTone.danger => t.danger,
        NxTone.info => t.info,
        NxTone.neutral => t.night,
      };

  /// Text on [fill].
  Color onFill(NxTokens t) => switch (this) {
        NxTone.action => t.onAction,
        NxTone.neutral => t.onNight,
        _ => t.onPrimary,
      };

  Color soft(NxTokens t) => switch (this) {
        NxTone.success => t.primarySoft,
        NxTone.action => t.actionSoft,
        NxTone.danger => t.dangerSoft,
        NxTone.info => t.infoSoft,
        NxTone.neutral => t.surfaceMuted,
      };
}

/// Rupees with Indian grouping: 6559.74 → "₹6,559.74", 100000 → "₹1,00,000".
/// Paise only when there are some.
String formatRupees(double amount) {
  final bool negative = amount < 0;
  final double value = amount.abs();
  final bool whole = value == value.roundToDouble();
  final String fixed = whole ? value.round().toString() : value.toStringAsFixed(2);
  final List<String> parts = fixed.split('.');
  return '${negative ? '−' : ''}₹${_group(parts[0])}'
      '${parts.length > 1 ? '.${parts[1]}' : ''}';
}

/// "1234567" → "12,34,567": the last three digits, then pairs.
String _group(String digits) {
  if (digits.length <= 3) return digits;
  final String last = digits.substring(digits.length - 3);
  String rest = digits.substring(0, digits.length - 3);
  final List<String> pairs = <String>[];
  while (rest.length > 2) {
    pairs.insert(0, rest.substring(rest.length - 2));
    rest = rest.substring(0, rest.length - 2);
  }
  if (rest.isNotEmpty) pairs.insert(0, rest);
  return '${pairs.join(',')},$last';
}

/// An amount, set the way money should be: a small rupee sign, big tabular
/// rupees with Indian grouping, and the paise small and faded.
class NxMoneyText extends StatelessWidget {
  const NxMoneyText(
    this.amount, {
    super.key,
    this.style,
    this.colour,
    this.sign = '',
    this.alwaysPaise = false,
    this.split = true,
  });

  final double amount;

  /// The style of the rupees; defaults to [NxType.display].
  final TextStyle? style;
  final Color? colour;

  /// "+" for money earned.
  final String sign;

  /// Show ".00" on a whole amount, as a hero total does.
  final bool alwaysPaise;

  /// Set the rupee sign and the paise smaller than the rupees. Off for an
  /// amount inside a line of text, where one size reads better.
  final bool split;

  @override
  Widget build(BuildContext context) {
    final TextStyle base = (style ?? NxType.display).copyWith(
      color: colour ?? style?.color ?? DefaultTextStyle.of(context).style.color,
      fontFeatures: NxType.tabular,
    );
    String text = formatRupees(amount);
    if (alwaysPaise && !text.contains('.')) text = '$text.00';
    final int dot = text.lastIndexOf('.');
    // "₹6,559" and ".74"; the rupee sign is split off the front.
    final String whole = (dot < 0 ? text : text.substring(0, dot));
    final String rupees = whole.replaceFirst('₹', '');
    final String symbol = whole.substring(0, whole.indexOf('₹') + 1);
    final String? paise = dot < 0 ? null : text.substring(dot);
    final double size = base.fontSize ?? 32;
    final TextStyle small = base.copyWith(
      fontSize: split ? size * 0.48 : size,
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
    );
    return Text.rich(
      TextSpan(
        children: <InlineSpan>[
          TextSpan(text: '$sign$symbol', style: small),
          // Digits only, so a slight tightening cannot break a script.
          TextSpan(
            text: rupees,
            style: base.copyWith(
              letterSpacing: split ? -size * 0.025 : 0,
            ),
          ),
          if (paise != null)
            TextSpan(
              text: paise,
              style: small.copyWith(
                color: base.color?.withValues(alpha: split ? 0.6 : 1),
              ),
            ),
        ],
      ),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    );
  }
}

/// A status in a pill: a dot and a word, coloured by what it means.
class NxStatusChip extends StatelessWidget {
  const NxStatusChip({
    super.key,
    required this.label,
    required this.tone,
    this.icon,
    this.onDark = false,
  });

  final String label;
  final NxTone tone;
  final IconData? icon;

  /// On a hero card: white on translucent white, whatever the tone.
  final bool onDark;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    final Color fg = onDark ? Colors.white : tone.colour(t);
    final Color bg =
        onDark ? Colors.white.withValues(alpha: 0.18) : tone.soft(t);
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 200),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(color: bg, borderRadius: NxRadius.pillAll),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            if (icon != null)
              Icon(icon, size: 14, color: fg)
            else
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(color: fg, shape: BoxShape.circle),
              ),
            const SizedBox(width: 6),
            Flexible(
              child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: NxType.caption.copyWith(color: fg),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// A number with what it counts: deliveries, rating. Card, icon, big figure.
class NxStatTile extends StatelessWidget {
  const NxStatTile({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    this.tone = NxTone.success,
    this.count,
    this.muted = false,
  });

  final IconData icon;
  final String label;
  final String value;
  final NxTone tone;

  /// Set where the figure is a whole number worth counting up to.
  final int? count;

  /// For a value that is a word ("Not rated yet") rather than a number.
  final bool muted;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    final Color tint = tone.colour(t);
    final TextStyle figure = NxType.display.copyWith(
      fontSize: muted ? 16 : 28,
      color: muted ? t.inkMuted : t.ink,
    );
    return NxCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          const SizedBox(height: NxSpace.sm),
          SizedBox(
            height: 36,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: AlignmentDirectional.centerStart,
              child: count == null
                  ? Text(
                      value,
                      maxLines: 1,
                      textDirection: muted ? null : TextDirection.ltr,
                      style: figure,
                    )
                  : AnimatedCount(value: count!, style: figure),
            ),
          ),
          const SizedBox(height: 2),
          Text(
            label,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: NxType.bodySmall.copyWith(color: t.inkMuted),
          ),
        ],
      ),
    );
  }
}

/// The rider's initial in a circle, with an optional badge in the corner.
class NxAvatar extends StatelessWidget {
  const NxAvatar({
    super.key,
    required this.name,
    this.size = 56,
    this.badge,
    this.ring = false,
  });

  final String name;
  final double size;

  /// A small icon in the corner (an edit pencil, a tick).
  final IconData? badge;

  /// A white ring, for an avatar on a hero card.
  final bool ring;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    final String trimmed = name.trim();
    final String initial =
        trimmed.isEmpty ? '?' : trimmed.characters.first.toUpperCase();
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          Container(
            width: size,
            height: size,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ring ? Colors.white : null,
              gradient: ring ? null : t.heroGradient,
              border: ring
                  ? Border.all(
                      color: Colors.white.withValues(alpha: 0.4),
                      width: 4,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    )
                  : null,
            ),
            child: Text(
              initial,
              style: NxType.headline.copyWith(
                fontSize: size * 0.42,
                color: ring ? t.heroStart : Colors.white,
              ),
            ),
          ),
          if (badge != null)
            PositionedDirectional(
              end: -2,
              bottom: -2,
              child: Container(
                width: size * 0.36,
                height: size * 0.36,
                decoration: BoxDecoration(
                  color: t.action,
                  shape: BoxShape.circle,
                  border: Border.all(color: t.surface, width: 2),
                ),
                child: Icon(badge, size: size * 0.2, color: t.onAction),
              ),
            ),
        ],
      ),
    );
  }
}

/// One stop on an [NxStepTracker].
@immutable
class NxStep {
  const NxStep(this.label, this.icon);

  final String label;
  final IconData icon;
}

/// Circles joined by a line, a short label under each: the journey of an
/// order, or of a week's pay. Finished steps are ticked rather than hidden.
class NxStepTracker extends StatelessWidget {
  const NxStepTracker({
    super.key,
    required this.steps,
    required this.done,
    this.nextIsLive = true,
  });

  final List<NxStep> steps;

  /// How many steps, from the first, are finished.
  final int done;

  /// True when the step after the finished ones is under way (drawn in the
  /// action colour); false when it is only waiting its turn.
  final bool nextIsLive;

  @override
  Widget build(BuildContext context) {
    _State stateOf(int i) => i < done
        ? _State.done
        : i == done && nextIsLive
            ? _State.live
            : _State.waiting;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        for (int i = 0; i < steps.length; i++)
          Expanded(
            child: _Step(
              step: steps[i],
              state: stateOf(i),
              lineBefore: i == 0 ? null : i <= done,
              lineAfter: i == steps.length - 1 ? null : i < done,
            ),
          ),
      ],
    );
  }
}

enum _State { done, live, waiting }

class _Step extends StatelessWidget {
  const _Step({
    required this.step,
    required this.state,
    this.lineBefore,
    this.lineAfter,
  });

  final NxStep step;
  final _State state;
  final bool? lineBefore;
  final bool? lineAfter;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    final bool live = state == _State.live;
    final bool waiting = state == _State.waiting;
    final Color tint = switch (state) {
      _State.done => t.primary,
      _State.live => t.action,
      _State.waiting => t.inkFaint,
    };

    Widget line(bool? filled) => Expanded(
          child: filled == null
              ? const SizedBox.shrink()
              : AnimatedContainer(
                  duration: AppMotion.medium,
                  height: 3,
                  decoration: BoxDecoration(
                    color: filled ? t.primary : t.border,
                    borderRadius: NxRadius.pillAll,
                  ),
                ),
        );

    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            line(lineBefore),
            // A fixed box, so the live step's larger circle does not push
            // its label below the others.
            SizedBox(
              width: 40,
              height: 40,
              child: Center(
                child: AnimatedContainer(
                  duration: AppMotion.medium,
                  curve: AppMotion.change,
                  width: live ? 40 : 32,
                  height: live ? 40 : 32,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: waiting ? t.surface : tint,
                    border: Border.all(
                      color: waiting ? t.border : tint,
                      width: 2,
                    ),
                    boxShadow: live
                        ? <BoxShadow>[
                            BoxShadow(
                              color: tint.withValues(alpha: 0.35),
                              blurRadius: 12,
                              spreadRadius: 1,
                            ),
                          ]
                        : null,
                  ),
                  child: Icon(
                    state == _State.done ? Icons.check_rounded : step.icon,
                    size: live ? 20 : 17,
                    color: waiting ? tint : Colors.white,
                  ),
                ),
              ),
            ),
            line(lineAfter),
          ],
        ),
        const SizedBox(height: NxSpace.xs),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: Text(
            step.label,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: NxType.caption.copyWith(
              color: waiting ? t.inkMuted : tint,
              fontWeight: live ? FontWeight.w800 : FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
