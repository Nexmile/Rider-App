import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/swipe_to_confirm.dart';
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
                  begin: const Offset(0, 0.08),
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
    final ThemeData theme = Theme.of(context);
    final OfferController controller = context.watch<OfferController>();
    final OrderOffer offer = widget.offer;
    final Duration left = offer.remaining();
    final double fraction =
        (left.inMilliseconds / _window.inMilliseconds).clamp(0.0, 1.0);

    final String? fromYou = formatDistance(l10n, offer.pickupDistanceMetres);
    final String? trip = formatDistance(l10n, offer.deliveryDistanceMetres);
    final String summary = <String>[
      l10n.offerEstimatedEarnings,
      if (offer.itemCount != null) l10n.offerItems('${offer.itemCount}'),
      // Cash is the one figure the rider is personally liable for, so it is
      // on the card even though it makes the line longer.
      if (offer.collectCash > 0)
        l10n.offerCollectCash(formatAmount(l10n, offer.collectCash)),
    ].join(' · ');

    // A compact card over the dimmed app, the way ride apps put up an
    // incoming request: the app is still there behind it, the decision is
    // all that is lit.
    return Material(
      color: Colors.black.withValues(alpha: 0.72),
      child: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 420),
              child: Container(
                padding: const EdgeInsets.fromLTRB(22, 22, 22, 22),
                decoration: BoxDecoration(
                  color: _card,
                  borderRadius: BorderRadius.circular(22),
                  // A green edge and glow: the one lit thing over the dimmed
                  // app, the way an incoming call is.
                  border: Border.all(
                    color: const Color(0xFF3DBE3D).withValues(alpha: 0.55),
                    width: 1.5,
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: const Color(0xFF3DBE3D).withValues(alpha: 0.28),
                      blurRadius: 34,
                      spreadRadius: 2,
                    ),
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.5),
                      blurRadius: 30,
                      offset: const Offset(0, 12),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        _NewOrderPill(label: l10n.offerTitle),
                        const Spacer(),
                        _Countdown(
                          fraction: fraction,
                          seconds: (left.inMilliseconds / 1000).ceil(),
                        ),
                      ],
                    ),
                    const SizedBox(height: 18),
                    Text(
                      formatAmount(l10n, offer.earnings),
                      style: theme.textTheme.displaySmall?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      summary,
                      style: theme.textTheme.bodyLarge?.copyWith(
                        color: _muted,
                      ),
                    ),
                    const SizedBox(height: 18),
                    const Divider(height: 1, color: Color(0xFF3A3A3A)),
                    const SizedBox(height: 18),
                    _Stop(
                      colour: const Color(0xFF6AA6F8),
                      title: l10n.offerPickupLine(offer.restaurant),
                      subtitle: fromYou == null ? null : l10n.offerFromYou(fromYou),
                    ),
                    // The route between the two stops, dotted like a map's.
                    const Padding(
                      padding: EdgeInsetsDirectional.only(start: 8),
                      child: _RouteDots(),
                    ),
                    _Stop(
                      colour: const Color(0xFFF07A7A),
                      title: l10n.offerDropLine(offer.dropoffArea ?? '—'),
                      subtitle: trip == null ? null : l10n.offerTrip(trip),
                    ),
                    if (offer.estimatedPrepMinutes != null &&
                        offer.estimatedPrepMinutes! > 0) ...<Widget>[
                      const SizedBox(height: 14),
                      Text(
                        l10n.offerFoodReadyIn('${offer.estimatedPrepMinutes}'),
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: _muted,
                        ),
                      ),
                    ],
                    const SizedBox(height: 22),
                    AnimatedSize(
                      duration: const Duration(milliseconds: 200),
                      child: _choosingReason
                          ? _RejectReasons(
                              onChosen: _reject,
                              onBack: () =>
                                  setState(() => _choosingReason = false),
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                SwipeToConfirm(
                                  key: const ValueKey<String>('offer-swipe'),
                                  label: controller.isAccepting
                                      ? l10n.offerAccepting
                                      : l10n.offerSwipeToAccept,
                                  busy: controller.isAccepting,
                                  onConfirmed: _accept,
                                ),
                                const SizedBox(height: 12),
                                OutlinedButton(
                                  onPressed: controller.isAccepting
                                      ? null
                                      : () => setState(
                                            () => _choosingReason = true,
                                          ),
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    side: const BorderSide(
                                      color: Color(0xFF4A4A4A),
                                      width: 1.4,
                                    ),
                                    minimumSize: const Size.fromHeight(56),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                    textStyle: theme.textTheme.titleMedium,
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
      ),
    );
  }
}

const Color _card = Color(0xFF1C1C1C);
const Color _muted = Color(0xFFB5B5B0);

/// "New order", in a green-tinted pill.
class _NewOrderPill extends StatelessWidget {
  const _NewOrderPill({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
      decoration: BoxDecoration(
        color: const Color(0xFF143D14),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Icon(
            Icons.delivery_dining_rounded,
            size: 18,
            color: Color(0xFF3DBE3D),
          ),
          const SizedBox(width: 6),
          Text(
            label,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: const Color(0xFF3DBE3D),
                  fontWeight: FontWeight.w700,
                ),
          ),
        ],
      ),
    );
  }
}

/// The small ring that runs out: green while there is time, amber, then red.
class _Countdown extends StatelessWidget {
  const _Countdown({required this.fraction, required this.seconds});

  final double fraction;
  final int seconds;

  @override
  Widget build(BuildContext context) {
    final Color colour = fraction > 0.5
        ? const Color(0xFF3DBE3D)
        : fraction > 0.2
            ? AppColors.orangeLight
            : const Color(0xFFE5484D);

    return SizedBox.square(
      dimension: 56,
      child: CustomPaint(
        painter: _RingPainter(fraction: fraction, colour: colour),
        child: Center(
          child: Text(
            '$seconds',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontFeatures: const <FontFeature>[
                    FontFeature.tabularFigures(),
                  ],
                ),
          ),
        ),
      ),
    );
  }
}

class _RingPainter extends CustomPainter {
  const _RingPainter({required this.fraction, required this.colour});

  final double fraction;
  final Color colour;

  @override
  void paint(Canvas canvas, Size size) {
    const double stroke = 4;
    final Rect rect = (Offset.zero & size).deflate(stroke / 2);
    canvas.drawArc(
      rect,
      0,
      math.pi * 2,
      false,
      Paint()
        ..color = colour.withValues(alpha: 0.22)
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

/// One end of the trip: a coloured marker, the place, how far.
class _Stop extends StatelessWidget {
  const _Stop({required this.colour, required this.title, this.subtitle});

  final Color colour;
  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 18,
          height: 18,
          margin: const EdgeInsets.only(top: 3),
          decoration: BoxDecoration(
            border: Border.all(color: colour, width: 2.2),
            borderRadius: BorderRadius.circular(3),
          ),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              if (subtitle != null)
                Text(
                  subtitle!,
                  style: theme.textTheme.bodyMedium?.copyWith(color: _muted),
                ),
            ],
          ),
        ),
      ],
    );
  }
}

/// Three dots from the pickup marker down to the drop marker.
class _RouteDots extends StatelessWidget {
  const _RouteDots();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          for (int i = 0; i < 3; i++)
            Container(
              width: 3,
              height: 3,
              margin: const EdgeInsets.symmetric(vertical: 2),
              decoration: const BoxDecoration(
                color: _muted,
                shape: BoxShape.circle,
              ),
            ),
        ],
      ),
    );
  }
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
