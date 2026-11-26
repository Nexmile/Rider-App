import 'package:flutter/foundation.dart';

import '../data/order_models.dart';

/// Today's work, worked out on the phone from the delivery history.
///
/// A stand-in until the server sends its own day summary: it counts only
/// what the history list holds, which is the most recent page of orders. A
/// rider who did more deliveries today than that page holds would see too
/// little, never too much.
@immutable
class ShiftSummary {
  const ShiftSummary({
    required this.deliveries,
    required this.earnings,
    required this.cash,
  });

  /// Orders delivered since midnight, local time.
  final int deliveries;

  /// What those orders paid the rider.
  final double earnings;

  /// Cash taken from customers on those orders.
  final double cash;

  static const ShiftSummary empty =
      ShiftSummary(deliveries: 0, earnings: 0, cash: 0);

  static ShiftSummary today(List<RiderOrder> history, {DateTime? now}) {
    final DateTime clock = now ?? DateTime.now();
    final DateTime midnight = DateTime(clock.year, clock.month, clock.day);
    int count = 0;
    double total = 0;
    double cash = 0;
    for (final RiderOrder order in history) {
      if (order.status != OrderStatus.delivered) continue;
      final DateTime? at = order.deliveredAt?.toLocal();
      if (at == null || at.isBefore(midnight)) continue;
      count++;
      total += order.earnings;
      cash += order.collectCash;
    }
    return ShiftSummary(deliveries: count, earnings: total, cash: cash);
  }
}
