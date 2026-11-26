import 'package:flutter/material.dart';

import '../motion/app_motion.dart';
import '../theme/app_colors.dart';
import '../theme/app_surface.dart';

/// One stop on a [StepTracker].
@immutable
class TrackerStep {
  const TrackerStep(this.label, this.icon);

  final String label;
  final IconData icon;
}

/// Circles joined by a line, with a short label under each: the journey of
/// an order, or of a week's pay.
///
/// Every step stays on screen, the finished ones ticked rather than hidden:
/// what is done is worth seeing as much as what is next.
class StepTracker extends StatelessWidget {
  const StepTracker({
    super.key,
    required this.steps,
    required this.done,
    this.nextIsLive = true,
  });

  final List<TrackerStep> steps;

  /// How many steps, from the first, are finished.
  final int done;

  /// True when the step after the finished ones is under way, and drawn in
  /// orange. False when it is only waiting its turn: a week worked out but
  /// not yet being sent is not "being sent".
  final bool nextIsLive;

  @override
  Widget build(BuildContext context) {
    _StepState stateOf(int i) => i < done
        ? _StepState.done
        : i == done && nextIsLive
            ? _StepState.live
            : _StepState.waiting;

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

enum _StepState { done, live, waiting }

/// One circle, with the line either side of it and its label.
class _Step extends StatelessWidget {
  const _Step({
    required this.step,
    required this.state,
    this.lineBefore,
    this.lineAfter,
  });

  final TrackerStep step;
  final _StepState state;

  /// Whether the line on that side is filled in; null at the ends of the row.
  final bool? lineBefore;
  final bool? lineAfter;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final bool isDark = theme.brightness == Brightness.dark;
    final Color green = isDark ? AppColors.greenLight : AppColors.greenDeep;
    final Color muted = AppSurface.line(context);
    final bool live = state == _StepState.live;
    final bool waiting = state == _StepState.waiting;

    final Color tint = switch (state) {
      _StepState.done => green,
      _StepState.live => AppColors.orangeDeep,
      _StepState.waiting => theme.colorScheme.onSurfaceVariant,
    };

    Widget line(bool? filled) => Expanded(
          child: filled == null
              ? const SizedBox.shrink()
              : AnimatedContainer(
                  duration: AppMotion.medium,
                  height: 3,
                  decoration: BoxDecoration(
                    color: filled ? green : muted,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
        );

    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            line(lineBefore),
            // A fixed box, so the live step's larger circle does not push its
            // label below the others.
            SizedBox(
              width: 38,
              height: 38,
              child: Center(
                child: AnimatedContainer(
                  duration: AppMotion.medium,
                  curve: AppMotion.change,
                  width: live ? 38 : 32,
                  height: live ? 38 : 32,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: waiting ? theme.colorScheme.surfaceContainerLow : tint,
                    border: Border.all(color: waiting ? muted : tint, width: 2),
                    boxShadow: live
                        ? <BoxShadow>[
                            BoxShadow(
                              color: tint.withValues(alpha: 0.35),
                              blurRadius: 10,
                              spreadRadius: 1,
                            ),
                          ]
                        : null,
                  ),
                  child: Icon(
                    state == _StepState.done ? Icons.check_rounded : step.icon,
                    size: live ? 20 : 17,
                    color: waiting ? tint : Colors.white,
                  ),
                ),
              ),
            ),
            line(lineAfter),
          ],
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: Text(
            step.label,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: theme.textTheme.labelSmall?.copyWith(
              color: tint,
              fontWeight: live ? FontWeight.w800 : FontWeight.w600,
              height: 1.25,
            ),
          ),
        ),
      ],
    );
  }
}
