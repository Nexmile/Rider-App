import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../../../core/design/design.dart';
import '../../../../generated/l10n/app_localizations.dart';
import '../../data/offer_models.dart';
import '../../data/order_models.dart';
import '../../state/offer_controller.dart';
import '../orders/order_formatting.dart';

/// Shows the live offer card over every screen of the app, and handles what
/// the rider does with it.
///
/// Sits above the navigator, so a card lands on top of whatever the rider was
/// looking at — the board, a payout, their profile — the way an incoming call
/// does. [onWon] is told when an accept succeeds, to put the order in hand.
class OfferOverlay extends StatelessWidget {
  const OfferOverlay({super.key, required this.child, required this.onWon});

  final Widget child;
  final ValueChanged<RiderOrder> onWon;

  @override
  Widget build(BuildContext context) {
    final OrderOffer? offer = context.watch<OfferController>().offer;

    return Stack(
      children: <Widget>[
        child,
        Positioned.fill(
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 280),
            switchInCurve: Curves.easeOutCubic,
            transitionBuilder: (Widget child, Animation<double> a) =>
                FadeTransition(
              opacity: a,
              child: SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0, 0.25),
                  end: Offset.zero,
                ).animate(a),
                child: child,
              ),
            ),
            child: offer == null
                ? const SizedBox.shrink()
                : IncomingOfferCard(
                    key: ValueKey<String>(offer.offerId),
                    offer: offer,
                    onWon: onWon,
                  ),
          ),
        ),
      ],
    );
  }
}

/// The ringing order card: what the job pays, where it goes, how long is
/// left, and the two answers.
class IncomingOfferCard extends StatefulWidget {
  const IncomingOfferCard({
    super.key,
    required this.offer,
    required this.onWon,
  });

  final OrderOffer offer;
  final ValueChanged<RiderOrder> onWon;

  @override
  State<IncomingOfferCard> createState() => _IncomingOfferCardState();
}

class _IncomingOfferCardState extends State<IncomingOfferCard> {
  /// The window as it stood when the card appeared, for the ring's fraction.
  late final Duration _window = _atLeastOneSecond(widget.offer.remaining());

  static Duration _atLeastOneSecond(Duration d) =>
      d.inMilliseconds < 1000 ? const Duration(seconds: 1) : d;

  @override
  void initState() {
    super.initState();
    // On top of the ringer's own pattern: one firm knock the moment it lands.
    HapticFeedback.heavyImpact();
  }

  Future<void> _accept() async {
    final OfferController offers = context.read<OfferController>();
    final ScaffoldMessengerState messenger = ScaffoldMessenger.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);

    final AcceptOutcome outcome = await offers.accept();
    final String? message = switch (outcome) {
      OfferWon(:final RiderOrder order) => () {
          widget.onWon(order);
          return null;
        }(),
      OfferTaken() => l10n.offerTaken,
      OfferGone() => null,
      OfferRefused(:final String? message) => message ?? l10n.offerTaken,
      OfferRetry() => l10n.somethingWentWrong,
    };
    if (message != null) {
      messenger
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text(message)));
    }
  }

  /// True while the decline reasons are showing in place of the slider.
  /// Inline rather than a sheet: the card sits above the app's navigator, so
  /// there is no route to open one on, and staying in the card keeps the
  /// countdown in sight.
  bool _choosingReason = false;

  Future<void> _reject(String reason) =>
      context.read<OfferController>().reject(reason: reason);

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NxTokens t = context.nx;
    final OfferController controller = context.watch<OfferController>();
    final OrderOffer offer = widget.offer;
    final Duration left = offer.remaining();
    final double fraction =
        (left.inMilliseconds / _window.inMilliseconds).clamp(0.0, 1.0);
    final MediaQueryData media = MediaQuery.of(context);
    final Color ink = t.onNight;
    final Color soft = ink.withValues(alpha: 0.7);

    final String? fromYou = formatDistance(l10n, offer.pickupDistanceMetres);
    final String? trip = formatDistance(l10n, offer.deliveryDistanceMetres);

    // A dark sheet rising over the dimmed app, the way an incoming call
    // takes the screen: the app is still there behind it, the decision is
    // all that is lit.
    return Material(
      color: Colors.black.withValues(alpha: 0.55),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 560,
            maxHeight: media.size.height - media.padding.top - NxSpace.xl,
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: t.nightDeep,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(32)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.35),
                  blurRadius: 50,
                  offset: const Offset(0, -20),
                ),
              ],
            ),
            child: SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(
                NxSpace.lg,
                NxSpace.sm,
                NxSpace.lg,
                NxSpace.xl + media.padding.bottom,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Center(
                    child: Container(
                      width: 44,
                      height: 5,
                      decoration: BoxDecoration(
                        color: ink.withValues(alpha: 0.22),
                        borderRadius: NxRadius.pillAll,
                      ),
                    ),
                  ),
                  const SizedBox(height: NxSpace.lg),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            _NewOrderPill(label: l10n.offerTitle),
                            const SizedBox(height: NxSpace.xs),
                            Text(
                              l10n.offerEstimatedEarnings,
                              style: NxType.bodySmall.copyWith(
                                color: soft,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      _Countdown(
                        fraction: fraction,
                        seconds: (left.inMilliseconds / 1000).ceil(),
                      ),
                    ],
                  ),
                  const SizedBox(height: NxSpace.xxs),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: AlignmentDirectional.centerStart,
                    child: NxMoneyText(
                      offer.earnings,
                      colour: ink,
                      style: NxType.display.copyWith(fontSize: 58),
                    ),
                  ),
                  const SizedBox(height: NxSpace.md),
                  Wrap(
                    spacing: NxSpace.xs,
                    runSpacing: NxSpace.xs,
                    children: <Widget>[
                      if (offer.itemCount != null)
                        _Chip(text: l10n.offerItems('${offer.itemCount}')),
                      if (trip != null) _Chip(text: l10n.offerTrip(trip)),
                      // Cash is the one figure the rider is personally
                      // liable for, so it is the one chip in colour.
                      if (offer.collectCash > 0)
                        _Chip(
                          text: l10n.offerCollectCash(
                            formatAmount(l10n, offer.collectCash),
                          ),
                          fill: t.action,
                          ink: t.onAction,
                        ),
                      if (offer.estimatedPrepMinutes != null &&
                          offer.estimatedPrepMinutes! > 0)
                        _Chip(
                          text: l10n.offerFoodReadyIn(
                            '${offer.estimatedPrepMinutes}',
                          ),
                          fill: t.lime.withValues(alpha: 0.14),
                          ink: t.lime,
                        ),
                    ],
                  ),
                  const SizedBox(height: NxSpace.lg),
                  Container(
                    padding: const EdgeInsets.all(NxSpace.md),
                    decoration: BoxDecoration(
                      color: ink.withValues(alpha: 0.06),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: <Widget>[
                        _Stop(
                          marker: _Marker.pickup,
                          title: l10n.offerPickupLine(offer.restaurant),
                          subtitle:
                              fromYou == null ? null : l10n.offerFromYou(fromYou),
                          connector: true,
                        ),
                        _Stop(
                          marker: _Marker.drop,
                          title: l10n.offerDropLine(offer.dropoffArea ?? '—'),
                          subtitle: trip == null ? null : l10n.offerTrip(trip),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: NxSpace.lg),
                  AnimatedSize(
                    duration: AppMotion.quick,
                    child: _choosingReason
                        ? _RejectReasons(
                            onChosen: _reject,
                            onBack: () =>
                                setState(() => _choosingReason = false),
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              NxSwipeButton(
                                key: const ValueKey<String>('offer-swipe'),
                                label: controller.isAccepting
                                    ? l10n.offerAccepting
                                    : l10n.offerSwipeToAccept,
                                busy: controller.isAccepting,
                                onConfirmed: _accept,
                              ),
                              const SizedBox(height: NxSpace.sm),
                              OutlinedButton(
                                onPressed: controller.isAccepting
                                    ? null
                                    : () => setState(
                                          () => _choosingReason = true,
                                        ),
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: ink.withValues(alpha: 0.85),
                                  side: BorderSide(
                                    color: ink.withValues(alpha: 0.16),
                                    width: 1.5,
                                  ),
                                  minimumSize: const Size.fromHeight(52),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  textStyle: NxType.button.copyWith(
                                    fontSize: 15,
                                  ),
                                ),
                                child: Text(l10n.offerReject),
                              ),
                            ],
                          ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// "New order", lime on a lime-tinted pill.
class _NewOrderPill extends StatelessWidget {
  const _NewOrderPill({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: t.lime.withValues(alpha: 0.12),
        borderRadius: NxRadius.pillAll,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: 7,
            height: 7,
            decoration: BoxDecoration(color: t.lime, shape: BoxShape.circle),
          ),
          const SizedBox(width: 6),
          Flexible(
            child: Text(
              label.toUpperCase(),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: NxType.caption.copyWith(
                color: t.lime,
                fontWeight: FontWeight.w800,
                letterSpacing: 0.7,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// A fact about the job, in a dark chip; cash gets the orange one.
class _Chip extends StatelessWidget {
  const _Chip({required this.text, this.fill, this.ink});

  final String text;
  final Color? fill;
  final Color? ink;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: fill ?? t.onNight.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        style: NxType.bodySmall.copyWith(
          color: ink ?? t.onNight,
          fontWeight: fill == null ? FontWeight.w700 : FontWeight.w800,
        ),
      ),
    );
  }
}

/// The ring that runs out: lime while there is time, orange, then red.
class _Countdown extends StatelessWidget {
  const _Countdown({required this.fraction, required this.seconds});

  final double fraction;
  final int seconds;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    final Color colour = fraction > 0.5
        ? t.lime
        : fraction > 0.2
            ? t.action
            : NxColors.red500;

    return SizedBox.square(
      dimension: 64,
      child: CustomPaint(
        painter: _RingPainter(
          fraction: fraction,
          colour: colour,
          track: t.onNight.withValues(alpha: 0.12),
        ),
        child: Center(
          child: Text(
            '$seconds',
            style: NxType.title.copyWith(
              color: t.onNight,
              fontWeight: FontWeight.w800,
              fontFeatures: NxType.tabular,
            ),
          ),
        ),
      ),
    );
  }
}

class _RingPainter extends CustomPainter {
  const _RingPainter({
    required this.fraction,
    required this.colour,
    required this.track,
  });

  final double fraction;
  final Color colour;
  final Color track;

  @override
  void paint(Canvas canvas, Size size) {
    const double stroke = 5;
    final Rect rect = (Offset.zero & size).deflate(stroke / 2 + 1);
    canvas.drawArc(
      rect,
      0,
      math.pi * 2,
      false,
      Paint()
        ..color = track
        ..style = PaintingStyle.stroke
        ..strokeWidth = stroke,
    );
    canvas.drawArc(
      rect,
      -math.pi / 2,
      math.pi * 2 * fraction,
      false,
      Paint()
        ..color = colour
        ..style = PaintingStyle.stroke
        ..strokeWidth = stroke
        ..strokeCap = StrokeCap.round,
    );
  }

  @override
  bool shouldRepaint(_RingPainter old) =>
      old.fraction != fraction || old.colour != colour;
}

enum _Marker { pickup, drop }

/// One end of the trip: its marker, the place, how far. The pickup's marker
/// carries a dotted line down to the drop.
class _Stop extends StatelessWidget {
  const _Stop({
    required this.marker,
    required this.title,
    this.subtitle,
    this.connector = false,
  });

  final _Marker marker;
  final String title;
  final String? subtitle;
  final bool connector;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    final Color ink = t.onNight;
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            width: 16,
            child: Column(
              children: <Widget>[
                const SizedBox(height: 4),
                if (marker == _Marker.pickup)
                  Container(
                    width: 14,
                    height: 14,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: t.lime, width: 3),
                    ),
                  )
                else
                  Container(
                    width: 14,
                    height: 14,
                    decoration: BoxDecoration(
                      color: t.action,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                if (connector)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: CustomPaint(
                        painter: _DashPainter(ink.withValues(alpha: 0.35)),
                        child: const SizedBox(width: 2),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: connector ? NxSpace.md : 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: NxType.titleSmall.copyWith(
                      color: ink,
                      fontWeight: FontWeight.w800,
                      fontSize: 17,
                    ),
                  ),
                  if (subtitle != null)
                    Text(
                      subtitle!,
                      style: NxType.bodySmall.copyWith(
                        color: ink.withValues(alpha: 0.65),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DashPainter extends CustomPainter {
  const _DashPainter(this.colour);

  final Color colour;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint p = Paint()
      ..color = colour
      ..strokeWidth = 2;
    final double x = size.width / 2;
    for (double y = 0; y < size.height; y += 8) {
      canvas.drawLine(Offset(x, y), Offset(x, (y + 4).clamp(0, size.height)), p);
    }
  }

  @override
  bool shouldRepaint(_DashPainter old) => old.colour != colour;
}

/// The decline reasons, in the card where the slider was.
class _RejectReasons extends StatelessWidget {
  const _RejectReasons({required this.onChosen, required this.onBack});

  final ValueChanged<String> onChosen;
  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final ThemeData theme = Theme.of(context);
    final List<String> reasons = <String>[
      l10n.offerReasonTooFar,
      l10n.offerReasonBusy,
      l10n.offerReasonVehicle,
      l10n.offerReasonOther,
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          l10n.offerRejectTitle,
          textAlign: TextAlign.center,
          style: theme.textTheme.titleMedium?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 12),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 8,
          runSpacing: 8,
          children: <Widget>[
            for (final String reason in reasons)
              OutlinedButton(
                onPressed: () => onChosen(reason),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  side: const BorderSide(color: Colors.white38),
                  shape: const StadiumBorder(),
                  minimumSize: const Size(0, 44),
                ),
                child: Text(reason),
              ),
          ],
        ),
        const SizedBox(height: 6),
        TextButton(
          onPressed: onBack,
          style: TextButton.styleFrom(foregroundColor: Colors.white70),
          child: Text(MaterialLocalizations.of(context).backButtonTooltip),
        ),
      ],
    );
  }
}
