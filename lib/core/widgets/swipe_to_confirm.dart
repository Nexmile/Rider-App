import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme/app_colors.dart';

/// A slider the rider drags all the way across. A tap in a pocket cannot
/// accept a job, collect an order or close one; a deliberate swipe can.
/// Screen readers get a plain button with the same label.
class SwipeToConfirm extends StatefulWidget {
  const SwipeToConfirm({
    super.key,
    required this.label,
    required this.onConfirmed,
    this.busy = false,
    this.enabled = true,
    this.icon = Icons.arrow_forward_rounded,
    this.track = const Color(0xFF0A8F0A),
    this.trackDone = AppColors.green,
    this.thumb = Colors.white,
    this.thumbInk = AppColors.greenDeep,
    this.labelColour = Colors.white,
  });

  final String label;

  /// Run once the thumb reaches the far end. The thumb waits there until
  /// this finishes, then goes home if the slider is still on screen: a sheet
  /// or a dialog the rider backed out of leaves it ready for another go.
  final FutureOr<void> Function() onConfirmed;

  /// The work the swipe started is running: the thumb stays at the far end
  /// with a spinner, and comes home if it ends without leaving the screen.
  final bool busy;
  final bool enabled;
  final IconData icon;
  final Color track;
  final Color trackDone;
  final Color thumb;
  final Color thumbInk;
  final Color labelColour;

  static const double height = 64;

  @override
  State<SwipeToConfirm> createState() => _SwipeToConfirmState();
}

class _SwipeToConfirmState extends State<SwipeToConfirm>
    with SingleTickerProviderStateMixin {
  static const double _thumb = 56;

  double _drag = 0;
  double _from = 0;
  late final AnimationController _back = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 220),
  )..addListener(() => setState(() => _drag = _from * (1 - _back.value)));

  @override
  void dispose() {
    _back.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(SwipeToConfirm old) {
    super.didUpdateWidget(old);
    // Work that came back without leaving the screen puts the thumb home.
    if (old.busy && !widget.busy && _drag > 0) _home();
  }

  void _home() {
    _from = _drag;
    _back.forward(from: 0);
  }

  bool get _live => widget.enabled && !widget.busy && !_running;

  bool _running = false;

  Future<void> _confirm(double travel) async {
    HapticFeedback.mediumImpact();
    setState(() {
      _drag = travel;
      _running = true;
    });
    try {
      await widget.onConfirmed();
    } finally {
      if (mounted) {
        setState(() => _running = false);
        if (!widget.busy && _drag > 0) _home();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints box) {
        const double inset = (SwipeToConfirm.height - _thumb) / 2;
        final double travel = box.maxWidth - _thumb - inset * 2;
        final double progress = travel <= 0 ? 0 : (_drag / travel).clamp(0, 1);

        return Semantics(
          button: true,
          enabled: _live,
          label: widget.label,
          onTap: _live
              ? () => _confirm(
                    (box.maxWidth - _thumb - (SwipeToConfirm.height - _thumb))
                        .clamp(0, double.infinity),
                  )
              : null,
          excludeSemantics: true,
          child: Opacity(
            opacity: widget.enabled ? 1 : 0.5,
            child: Container(
              height: SwipeToConfirm.height,
              decoration: BoxDecoration(
                color: Color.lerp(widget.track, widget.trackDone, progress),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Stack(
                alignment: AlignmentDirectional.centerStart,
                children: <Widget>[
                  // Leaves room for the thumb at both ends, so the label is
                  // never under it.
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: _thumb + 8),
                    child: Center(
                      child: Opacity(
                        opacity: (1 - progress * 1.4).clamp(0, 1),
                        child: Text(
                          widget.label,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: widget.labelColour,
                            fontWeight: FontWeight.w800,
                          ),
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
                              final double dx =
                                  Directionality.of(context) == TextDirection.rtl
                                      ? -d.delta.dx
                                      : d.delta.dx;
                              setState(
                                () => _drag = (_drag + dx).clamp(0, travel),
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
                          color: widget.thumb,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.18),
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: widget.busy || _running
                            ? Padding(
                                padding: const EdgeInsets.all(16),
                                child: CircularProgressIndicator(
                                  strokeWidth: 2.6,
                                  color: widget.thumbInk,
                                ),
                              )
                            : Icon(widget.icon, color: widget.thumbInk, size: 28),
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
