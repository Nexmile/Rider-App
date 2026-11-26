import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../motion/app_motion.dart';
import '../app_radius.dart';
import '../app_spacing.dart';
import '../app_tokens.dart';
import '../app_typography.dart';
import 'nx_data.dart';

/// Nothing to show yet, said kindly: a drawn badge, a title, a line, and the
/// one thing to do about it.
class NxEmptyState extends StatelessWidget {
  const NxEmptyState({
    super.key,
    required this.icon,
    required this.title,
    this.body,
    this.action,
    this.tone = NxTone.success,
  });

  final IconData icon;
  final String title;
  final String? body;

  /// Usually an [NxPrimaryButton].
  final Widget? action;
  final NxTone tone;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    final Color tint = tone.colour(t);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: NxSpace.xl,
        vertical: NxSpace.xxl,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _Badge(icon: icon, tint: tint),
          const SizedBox(height: NxSpace.lg),
          Text(
            title,
            textAlign: TextAlign.center,
            style: NxType.title.copyWith(color: t.ink),
          ),
          if (body != null) ...<Widget>[
            const SizedBox(height: NxSpace.xs),
            Text(
              body!,
              textAlign: TextAlign.center,
              style: NxType.body.copyWith(color: t.inkMuted),
            ),
          ],
          if (action != null) ...<Widget>[
            const SizedBox(height: NxSpace.lg),
            action!,
          ],
        ],
      ),
    );
  }
}

/// Two soft rings around an icon, growing in once when the state appears.
/// Stands in for an illustration until real artwork exists. Plays once, not
/// in a loop: an idle screen should be calm, not busy.
class _Badge extends StatefulWidget {
  const _Badge({required this.icon, required this.tint});

  final IconData icon;
  final Color tint;

  @override
  State<_Badge> createState() => _BadgeState();
}

class _BadgeState extends State<_Badge> with SingleTickerProviderStateMixin {
  late final AnimationController _c = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 700),
  );

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (AppMotion.reduced(context)) {
      _c.value = 1;
    } else if (_c.value == 0 && !_c.isAnimating) {
      _c.forward();
    }
  }

  @override
  void dispose() {
    _c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Color tint = widget.tint;
    return AnimatedBuilder(
      animation: _c,
      builder: (BuildContext context, Widget? child) {
        final double grow = 0.85 + 0.15 * Curves.easeOutBack.transform(_c.value);
        return SizedBox(
          width: 132,
          height: 132,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Transform.scale(
                scale: grow,
                child: Container(
                  width: 132,
                  height: 132,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: tint.withValues(alpha: 0.06),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: tint.withValues(alpha: 0.10),
                ),
              ),
              child!,
            ],
          ),
        );
      },
      child: Container(
        width: 68,
        height: 68,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[tint, Color.lerp(tint, Colors.black, 0.25)!],
          ),
        ),
        child: Icon(widget.icon, color: Colors.white, size: 32),
      ),
    );
  }
}

/// A light band sweeping across whatever it wraps: the loading look of a
/// list before its rows arrive. Still when the platform asks for less
/// motion.
class NxShimmer extends StatefulWidget {
  const NxShimmer({super.key, required this.child});

  final Widget child;

  @override
  State<NxShimmer> createState() => _NxShimmerState();
}

class _NxShimmerState extends State<NxShimmer>
    with SingleTickerProviderStateMixin {
  late final AnimationController _c = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1300),
  );

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (AppMotion.reduced(context)) {
      _c.stop();
    } else if (!_c.isAnimating) {
      _c.repeat();
    }
  }

  @override
  void dispose() {
    _c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    return AnimatedBuilder(
      animation: _c,
      child: widget.child,
      builder: (BuildContext context, Widget? child) => ShaderMask(
        blendMode: BlendMode.srcATop,
        shaderCallback: (Rect bounds) {
          final double x = -1 + 3 * _c.value;
          return LinearGradient(
            begin: Alignment(x - 1, -0.2),
            end: Alignment(x, 0.2),
            colors: <Color>[
              t.surfaceMuted,
              Color.lerp(t.surfaceMuted, t.surface, 0.85)!,
              t.surfaceMuted,
            ],
          ).createShader(bounds);
        },
        child: child,
      ),
    );
  }
}

/// A grey block standing in for content that is loading.
class NxSkeleton extends StatelessWidget {
  const NxSkeleton({
    super.key,
    this.width,
    required this.height,
    this.radius = NxRadius.small,
  });

  final double? width;
  final double height;
  final double radius;

  @override
  Widget build(BuildContext context) => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: context.nx.surfaceMuted,
          borderRadius: BorderRadius.circular(radius),
        ),
      );
}

/// [count] card-shaped placeholders under one shimmer: a list loading.
class NxSkeletonList extends StatelessWidget {
  const NxSkeletonList({super.key, this.count = 3, this.height = 132});

  final int count;
  final double height;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    return NxShimmer(
      child: Column(
        children: <Widget>[
          for (int i = 0; i < count; i++) ...<Widget>[
            if (i > 0) const SizedBox(height: NxSpace.sm),
            Container(
              height: height,
              padding: const EdgeInsets.all(NxSpace.md),
              decoration: BoxDecoration(
                color: t.surface,
                borderRadius: NxRadius.cardAll,
                border: Border.all(color: t.border),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const NxSkeleton(width: 140, height: 16),
                  const SizedBox(height: NxSpace.sm),
                  const NxSkeleton(height: 12),
                  const SizedBox(height: NxSpace.xs),
                  const NxSkeleton(width: 200, height: 12),
                  const Spacer(),
                  Row(
                    children: const <Widget>[
                      NxSkeleton(width: 72, height: 24),
                      Spacer(),
                      NxSkeleton(width: 96, height: 24),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}

/// A tick drawn in a circle, then a burst of dots: the moment a delivery is
/// done. Plays once. With less motion asked for, it simply appears.
class NxSuccessCheck extends StatefulWidget {
  const NxSuccessCheck({super.key, this.size = 112});

  final double size;

  @override
  State<NxSuccessCheck> createState() => _NxSuccessCheckState();
}

class _NxSuccessCheckState extends State<NxSuccessCheck>
    with SingleTickerProviderStateMixin {
  late final AnimationController _c = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1100),
  );

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (AppMotion.reduced(context)) {
      _c.value = 1;
    } else if (_c.value == 0) {
      _c.forward();
    }
  }

  @override
  void dispose() {
    _c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    return SizedBox.square(
      dimension: widget.size * 1.6,
      child: AnimatedBuilder(
        animation: _c,
        builder: (BuildContext context, _) => CustomPaint(
          painter: _CheckPainter(
            progress: _c.value,
            circle: t.primary,
            burst: <Color>[t.primary, t.action, t.info],
            size: widget.size,
          ),
        ),
      ),
    );
  }
}

class _CheckPainter extends CustomPainter {
  _CheckPainter({
    required this.progress,
    required this.circle,
    required this.burst,
    required this.size,
  });

  final double progress;
  final Color circle;
  final List<Color> burst;
  final double size;

  @override
  void paint(Canvas canvas, Size box) {
    final Offset c = box.center(Offset.zero);
    final double r = size / 2;

    // 0.00–0.35: the circle grows in with a slight overshoot.
    final double grow =
        Curves.easeOutBack.transform((progress / 0.35).clamp(0.0, 1.0));
    canvas.drawCircle(c, r * grow, Paint()..color = circle);

    // 0.30–0.65: the tick draws itself.
    final double tick = ((progress - 0.30) / 0.35).clamp(0.0, 1.0);
    if (tick > 0) {
      final Path path = Path()
        ..moveTo(c.dx - r * 0.38, c.dy + r * 0.02)
        ..lineTo(c.dx - r * 0.10, c.dy + r * 0.30)
        ..lineTo(c.dx + r * 0.42, c.dy - r * 0.28);
      final ui = path.computeMetrics().first;
      canvas.drawPath(
        ui.extractPath(0, ui.length * tick),
        Paint()
          ..color = Colors.white
          ..style = PaintingStyle.stroke
          ..strokeWidth = r * 0.16
          ..strokeCap = StrokeCap.round
          ..strokeJoin = StrokeJoin.round,
      );
    }

    // 0.45–1.00: twelve dots fly out and fade.
    final double fly = ((progress - 0.45) / 0.55).clamp(0.0, 1.0);
    if (fly > 0 && fly < 1) {
      for (int i = 0; i < 12; i++) {
        final double a = i * math.pi / 6;
        final double d = r * (1.1 + 0.55 * Curves.easeOut.transform(fly));
        canvas.drawCircle(
          c + Offset(math.cos(a), math.sin(a)) * d,
          r * 0.07 * (1 - fly),
          Paint()..color = burst[i % burst.length].withValues(alpha: 1 - fly),
        );
      }
    }
  }

  @override
  bool shouldRepaint(_CheckPainter old) => old.progress != progress;
}
