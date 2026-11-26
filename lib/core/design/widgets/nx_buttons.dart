import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../motion/app_motion.dart';
import '../app_radius.dart';
import '../app_spacing.dart';
import '../app_tokens.dart';
import '../app_typography.dart';
import 'nx_data.dart';

/// The main action on a screen: full width, 56 tall, filled.
class NxPrimaryButton extends StatelessWidget {
  const NxPrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
    this.busy = false,
    this.tone = NxTone.success,
  });

  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;
  final bool busy;
  final NxTone tone;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    final Color bg = tone.fill(t);
    final Color fg = tone.onFill(t);
    return FilledButton(
      onPressed: busy ? null : onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: bg,
        foregroundColor: fg,
        minimumSize: const Size.fromHeight(NxSpace.tapTarget),
        shape: RoundedRectangleBorder(borderRadius: NxRadius.controlAll),
        textStyle: NxType.button,
      ),
      child: busy
          ? SizedBox(
              width: 22,
              height: 22,
              child: CircularProgressIndicator(strokeWidth: 2.4, color: fg),
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Flexible(
                  child: Text(
                    label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                if (icon != null) ...<Widget>[
                  const SizedBox(width: NxSpace.xs),
                  Icon(icon, size: 20),
                ],
              ],
            ),
    );
  }
}

/// The second action: outlined, same height, so the two line up.
class NxSecondaryButton extends StatelessWidget {
  const NxSecondaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
    this.tone = NxTone.neutral,
  });

  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;
  final NxTone tone;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    final Color fg = tone == NxTone.neutral ? t.ink : tone.colour(t);
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: fg,
        minimumSize: const Size.fromHeight(NxSpace.tapTarget),
        shape: RoundedRectangleBorder(borderRadius: NxRadius.controlAll),
        side: BorderSide(
          color: tone == NxTone.neutral ? t.border : fg.withValues(alpha: 0.5),
          width: 1.4,
        ),
        textStyle: NxType.button,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          if (icon != null) ...<Widget>[
            Icon(icon, size: 20),
            const SizedBox(width: NxSpace.xs),
          ],
          Flexible(
            child: Text(label, maxLines: 1, overflow: TextOverflow.ellipsis),
          ),
        ],
      ),
    );
  }
}

/// A slider the rider drags all the way across. A tap in a pocket cannot
/// accept a job, collect an order or close one; a deliberate swipe can.
/// Screen readers get a plain button with the same label.
///
/// Chevrons ripple along the track to say which way to drag, and stop when
/// the platform asks for less motion.
class NxSwipeButton extends StatefulWidget {
  const NxSwipeButton({
    super.key,
    required this.label,
    required this.onConfirmed,
    this.busy = false,
    this.enabled = true,
    this.icon = Icons.arrow_forward_rounded,
    this.tone = NxTone.success,
  });

  final String label;

  /// Runs once the thumb reaches the far end. The thumb waits there until
  /// this finishes, then goes home if the slider is still on screen: a sheet
  /// or a dialog the rider backed out of leaves it ready for another go.
  final FutureOr<void> Function() onConfirmed;

  /// The work the swipe started is running elsewhere.
  final bool busy;
  final bool enabled;
  final IconData icon;
  final NxTone tone;

  static const double height = 64;

  @override
  State<NxSwipeButton> createState() => _NxSwipeButtonState();
}

class _NxSwipeButtonState extends State<NxSwipeButton>
    with TickerProviderStateMixin {
  static const double _thumb = 56;

  double _drag = 0;
  double _from = 0;
  bool _running = false;

  late final AnimationController _back = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 220),
  )..addListener(() => setState(() => _drag = _from * (1 - _back.value)));

  /// The ripple along the track. Only runs while the slider can be used.
  late final AnimationController _hint = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1600),
  );

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _syncHint();
  }

  @override
  void didUpdateWidget(NxSwipeButton old) {
    super.didUpdateWidget(old);
    if (old.busy && !widget.busy && _drag > 0) _home();
    _syncHint();
  }

  void _syncHint() {
    final bool want = _live && !AppMotion.reduced(context);
    if (want && !_hint.isAnimating) {
      _hint.repeat();
    } else if (!want && _hint.isAnimating) {
      _hint
        ..stop()
        ..value = 0;
    }
  }

  @override
  void dispose() {
    _back.dispose();
    _hint.dispose();
    super.dispose();
  }

  void _home() {
    _from = _drag;
    _back.forward(from: 0);
  }

  bool get _live => widget.enabled && !widget.busy && !_running;

  Future<void> _confirm(double travel) async {
    HapticFeedback.mediumImpact();
    setState(() {
      _drag = travel;
      _running = true;
    });
    _syncHint();
    try {
      await widget.onConfirmed();
    } finally {
      if (mounted) {
        setState(() => _running = false);
        if (!widget.busy && _drag > 0) _home();
        _syncHint();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    final Color track = widget.tone.fill(t);
    final Color ink = widget.tone.onFill(t);
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints box) {
        const double inset = (NxSwipeButton.height - _thumb) / 2;
        final double travel = box.maxWidth - _thumb - inset * 2;
        final double progress =
            travel <= 0 ? 0 : (_drag / travel).clamp(0.0, 1.0);

        return Semantics(
          button: true,
          enabled: _live,
          label: widget.label,
          onTap: _live ? () => _confirm(travel < 0 ? 0 : travel) : null,
          excludeSemantics: true,
          child: Opacity(
            opacity: widget.enabled ? 1 : 0.5,
            child: Container(
              height: NxSwipeButton.height,
              decoration: BoxDecoration(
                color: Color.lerp(track, Color.lerp(track, Colors.black, 0.2),
                    progress),
                borderRadius: NxRadius.controlAll,
              ),
              child: Stack(
                alignment: AlignmentDirectional.centerStart,
                children: <Widget>[
                  // The label, clear of the thumb at both ends.
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: _thumb + 12),
                    child: Center(
                      child: Opacity(
                        opacity: (1 - progress * 1.4).clamp(0.0, 1.0),
                        child: Text(
                          widget.label,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: NxType.button.copyWith(
                            fontSize: 17,
                            fontWeight: FontWeight.w800,
                            color: ink,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Chevrons at the far end, rippling towards it.
                  PositionedDirectional(
                    end: 14,
                    child: AnimatedBuilder(
                      animation: _hint,
                      builder: (BuildContext context, _) => Opacity(
                        opacity: (1 - progress * 2).clamp(0.0, 1.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            for (int i = 0; i < 3; i++)
                              Icon(
                                Directionality.of(context) == TextDirection.rtl
                                    ? Icons.chevron_left_rounded
                                    : Icons.chevron_right_rounded,
                                size: 18,
                                color: ink.withValues(
                                  alpha: 0.25 +
                                      0.6 *
                                          (1 -
                                              ((_hint.value * 3 - i).abs())
                                                  .clamp(0.0, 1.0)),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  PositionedDirectional(
                    start: inset + _drag,
                    child: GestureDetector(
                      key: const ValueKey<String>('swipe-thumb'),
                      onHorizontalDragUpdate: _live
                          ? (DragUpdateDetails d) {
                              final double dx = Directionality.of(context) ==
                                      TextDirection.rtl
                                  ? -d.delta.dx
                                  : d.delta.dx;
                              setState(
                                () => _drag =
                                    (_drag + dx).clamp(0.0, travel),
                              );
                            }
                          : null,
                      onHorizontalDragEnd: _live
                          ? (_) {
                              if (_drag >= travel * 0.85) {
                                _confirm(travel);
                              } else {
                                _home();
                              }
                            }
                          : null,
                      child: Container(
                        width: _thumb,
                        height: _thumb,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(NxRadius.small + 2),
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              color: Color(0x2E000000),
                              blurRadius: 8,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: widget.busy || _running
                            ? Padding(
                                padding: const EdgeInsets.all(16),
                                child: CircularProgressIndicator(
                                  strokeWidth: 2.6,
                                  color: track,
                                ),
                              )
                            : Icon(widget.icon, color: track, size: 28),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
