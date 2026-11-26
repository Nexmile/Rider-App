import 'package:flutter/material.dart';

import '../../../../../core/design/design.dart';
import '../../../../../core/widgets/info_tile.dart' show StatusTone;
import '../../../../../generated/l10n/app_localizations.dart';
import '../../../data/order_models.dart';
import '../order_formatting.dart';

/// One order, as it appears on the board.
///
/// Laid out as a decision, in the order the decision is made: what it pays
/// (the biggest thing on the card), how far and whether there is cash to
/// handle, the route, then the button. About a second's reading with a
/// helmet still on.
class OrderCard extends StatelessWidget {
  const OrderCard({
    super.key,
    required this.order,
    this.onAccept,
    this.onTap,
    this.isBusy = false,
  });

  final RiderOrder order;

  /// Null where there is nothing left to accept.
  final VoidCallback? onAccept;

  final VoidCallback? onTap;

  /// True while any order action is in flight. Every accept button on the
  /// board goes inert together — a rider who taps two cards in the same second
  /// should take one order, not race themselves.
  final bool isBusy;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NxTokens t = context.nx;
    final String? toShop = formatDistance(l10n, order.pickup.distanceMetres);

    return NxCard(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  l10n.orderNumberLabel(order.orderNumber),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: NxType.caption.copyWith(color: t.inkMuted),
                ),
              ),
              const SizedBox(width: NxSpace.xs),
              NxStatusChip(
                label: order.statusText(l10n),
                tone: switch (order.statusTone) {
                  StatusTone.positive => NxTone.success,
                  StatusTone.warning => NxTone.action,
                  StatusTone.negative => NxTone.danger,
                  StatusTone.neutral => NxTone.neutral,
                },
              ),
            ],
          ),
          const SizedBox(height: NxSpace.sm),
          // What it pays, as large as anything on the board.
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      l10n.earningsLabel,
                      style: NxType.caption.copyWith(color: t.inkMuted),
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: AlignmentDirectional.centerStart,
                      child: NxMoneyText(
                        order.earnings,
                        colour: t.primary,
                        style: NxType.display.copyWith(fontSize: 34),
                      ),
                    ),
                  ],
                ),
              ),
              if (toShop != null) _Chip(icon: Icons.near_me_rounded, text: toShop),
            ],
          ),
          const SizedBox(height: NxSpace.sm),
          Wrap(
            spacing: NxSpace.xs,
            runSpacing: NxSpace.xs,
            children: <Widget>[
              // Cash is the one figure here that can cost the rider their own
              // money, so it is the one chip in colour.
              if (order.isCashOnDelivery)
                _Chip(
                  icon: Icons.payments_rounded,
                  text: l10n.offerCollectCash(
                    formatAmount(l10n, order.collectCash),
                  ),
                  fill: t.actionSoft,
                  ink: t.actionText,
                )
              else
                _Chip(
                  icon: Icons.verified_rounded,
                  text: l10n.prepaidLabel,
                  fill: t.primarySoft,
                  ink: t.primary,
                ),
              if (order.itemCount != null)
                _Chip(
                  icon: Icons.shopping_bag_outlined,
                  text: l10n.itemCount(order.itemCount!),
                ),
            ],
          ),
          const SizedBox(height: NxSpace.md),
          // Drawn as one journey joined by a rail rather than two unrelated
          // rows. On the board the second stop is deliberately missing,
          // which the rail shows as an open end instead of hiding.
          _Route(
            pickupLabel: l10n.pickupLabel,
            pickupName: order.pickup.name,
            pickupAddress: order.pickup.address,
            dropoffLabel: l10n.dropoffLabel,
            dropoffName: order.dropoff?.contactName,
            dropoffAddress: order.dropoff?.address,
            dropoffTrailing: order.dropoff == null
                ? null
                : formatDistance(l10n, order.deliveryDistanceMetres),
          ),
          if (onAccept != null) ...<Widget>[
            const SizedBox(height: NxSpace.md),
            NxPrimaryButton(
              label: l10n.acceptOrder,
              icon: Icons.bolt_rounded,
              onPressed: isBusy ? null : onAccept,
            ),
          ],
        ],
      ),
    );
  }
}

/// A fact about the order in a small rounded chip.
class _Chip extends StatelessWidget {
  const _Chip({required this.icon, required this.text, this.fill, this.ink});

  final IconData icon;
  final String text;
  final Color? fill;
  final Color? ink;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    final Color colour = ink ?? t.ink;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: fill ?? t.surfaceMuted,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(icon, size: 15, color: colour),
          const SizedBox(width: 5),
          Flexible(
            child: Text(
              text,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: NxType.caption.copyWith(
                fontSize: 13,
                color: colour,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Pickup and drop-off, joined by a dotted rail.
///
/// On the board the drop-off is withheld by the API, so the rail ends in a
/// hollow marker — the shape says "there is a second stop, you will see it
/// when it is yours" rather than leaving a gap.
class _Route extends StatelessWidget {
  const _Route({
    required this.pickupLabel,
    required this.pickupAddress,
    required this.dropoffLabel,
    this.pickupName,
    this.dropoffName,
    this.dropoffAddress,
    this.dropoffTrailing,
  });

  final String pickupLabel;
  final String? pickupName;
  final String pickupAddress;

  final String dropoffLabel;
  final String? dropoffName;
  final String? dropoffAddress;
  final String? dropoffTrailing;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    final bool hasDropoff = dropoffAddress != null;

    // IntrinsicHeight lets the rail stretch to exactly the height of the two
    // stops beside it; inside a scroll view the row's cross axis is
    // unbounded, so an `Expanded` rail would have nothing to expand into.
    return Container(
      padding: const EdgeInsets.all(NxSpace.sm),
      decoration: BoxDecoration(
        color: t.ground,
        borderRadius: BorderRadius.circular(16),
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 14,
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 3),
                  Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: t.primaryBright, width: 3),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: CustomPaint(
                        painter: _Dashes(t.inkFaint),
                        child: const SizedBox(width: 2),
                      ),
                    ),
                  ),
                  Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color: hasDropoff ? t.action : null,
                      border: hasDropoff
                          ? null
                          : Border.all(color: t.inkFaint, width: 2),
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  const SizedBox(height: 3),
                ],
              ),
            ),
            const SizedBox(width: NxSpace.sm),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _Stop(label: pickupLabel, name: pickupName, address: pickupAddress),
                  const SizedBox(height: NxSpace.sm),
                  if (hasDropoff)
                    _Stop(
                      label: dropoffLabel,
                      name: dropoffName,
                      address: dropoffAddress!,
                      trailing: dropoffTrailing,
                    )
                  else
                    // Not an error and not a placeholder: the address does
                    // not exist for this rider yet, and saying so is more
                    // use than a blank.
                    Text(
                      dropoffLabel,
                      style: NxType.caption.copyWith(color: t.inkMuted),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Dashes extends CustomPainter {
  const _Dashes(this.colour);

  final Color colour;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint p = Paint()
      ..color = colour
      ..strokeWidth = 2;
    final double x = size.width / 2;
    for (double y = 0; y < size.height; y += 7) {
      canvas.drawLine(Offset(x, y), Offset(x, (y + 3).clamp(0, size.height)), p);
    }
  }

  @override
  bool shouldRepaint(_Dashes old) => old.colour != colour;
}

class _Stop extends StatelessWidget {
  const _Stop({
    required this.label,
    required this.address,
    this.name,
    this.trailing,
  });

  final String label;
  final String? name;
  final String address;

  /// The distance, when the API sent one.
  final String? trailing;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                label.toUpperCase(),
                style: NxType.caption.copyWith(
                  fontSize: 11,
                  color: t.inkMuted,
                  letterSpacing: 0.5,
                ),
              ),
              if (name != null && name!.isNotEmpty)
                Text(
                  name!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: NxType.titleSmall.copyWith(
                    color: t.ink,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              Text(
                address,
                // Two lines, then ellipsis. A full Indian address runs three
                // or four lines and would push the button off a small screen;
                // the details screen is where the whole thing belongs.
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: NxType.bodySmall.copyWith(color: t.inkMuted),
              ),
            ],
          ),
        ),
        if (trailing != null) ...<Widget>[
          const SizedBox(width: NxSpace.xs),
          Text(
            trailing!,
            textDirection: TextDirection.ltr,
            style: NxType.caption.copyWith(color: t.inkMuted),
          ),
        ],
      ],
    );
  }
}
