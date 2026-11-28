import 'package:flutter/foundation.dart';

import 'order_models.dart';

/// One order offered to this rider, with a window to accept it.
///
/// Arrives two ways with the same fields: as a data-only FCM message, where
/// every value is a string, and from `GET /v1/rider/offers/current`, where the
/// numbers may be numbers. Both go through the same tolerant parse.
///
/// Carries no customer address or phone. The offer goes to up to 15 riders;
/// only the one who wins gets those, in the accept response.
@immutable
class OrderOffer {
  const OrderOffer({
    required this.offerId,
    required this.orderId,
    required this.orderNumber,
    required this.deadline,
    required this.restaurant,
    this.restaurantArea,
    this.restaurantLatitude,
    this.restaurantLongitude,
    this.pickupDistanceMetres,
    this.dropoffArea,
    this.deliveryDistanceMetres,
    this.itemCount,
    this.earnings = 0,
    this.collectCash = 0,
    this.estimatedPrepMinutes,
    this.wave,
    this.fromBoard = false,
  });

  final String offerId;
  final String orderId;
  final String orderNumber;

  /// When the window closes, on this phone's clock. See [fromData] for how a
  /// phone with a wrong clock is handled.
  final DateTime deadline;

  final String restaurant;
  final String? restaurantArea;
  final double? restaurantLatitude;
  final double? restaurantLongitude;

  /// From the rider's last reported position to the restaurant.
  final int? pickupDistanceMetres;

  /// Area only, never the street: the address comes after accepting.
  final String? dropoffArea;

  /// Restaurant to customer.
  final int? deliveryDistanceMetres;

  final int? itemCount;

  /// The rider's take on this job.
  final double earnings;

  /// Cash to collect at the door. Zero when prepaid.
  final double collectCash;

  /// Offers can arrive while the food is still cooking — the rider travels
  /// while it cooks — so the card says how long the wait is expected to be.
  final int? estimatedPrepMinutes;

  final int? wave;

  /// True for a card put up from the order board rather than offered to this
  /// rider by the server: a board-mode `order.offer` push names an order, not
  /// an offer. There is no offer to accept or reject, so Accept takes the
  /// order from the board and Decline only puts the card away. The order
  /// stays on the board either way.
  final bool fromBoard;

  /// How long a board card stays up. The server sets no window for a board
  /// order; this is the same half-minute a real offer rings for, after which
  /// the card goes and the order is still on the board.
  static const Duration boardWindow = Duration(seconds: 30);

  /// The card for an order on the board, for a board-mode push.
  static OrderOffer fromBoardOrder(RiderOrder order, {DateTime? now}) {
    final String? name = order.pickup.name?.trim();
    final bool named = name != null && name.isNotEmpty;
    return OrderOffer(
      offerId: 'board-${order.id}',
      orderId: order.id,
      orderNumber: order.orderNumber,
      deadline: (now ?? DateTime.now()).add(boardWindow),
      restaurant: named ? name : order.pickup.address,
      restaurantArea: named ? order.pickup.address : null,
      restaurantLatitude: order.pickup.latitude,
      restaurantLongitude: order.pickup.longitude,
      pickupDistanceMetres: order.pickup.distanceMetres,
      deliveryDistanceMetres: order.deliveryDistanceMetres,
      itemCount: order.itemCount,
      earnings: order.earnings,
      collectCash: order.collectCash,
      fromBoard: true,
    );
  }

  Duration remaining([DateTime? now]) {
    final Duration left = deadline.difference(now ?? DateTime.now());
    return left.isNegative ? Duration.zero : left;
  }

  bool isExpired([DateTime? now]) => remaining(now) == Duration.zero;

  /// Parses an FCM data map or an API object.
  ///
  /// The countdown runs to `expires_at`, because the server owns expiry. But a
  /// phone whose clock is minutes out would show a window that is already
  /// over, or one that never ends, so when `expires_at` disagrees with
  /// `seconds_left` by more than a few seconds the phone's own clock plus
  /// `seconds_left` is used instead. [receivedAt] is when the message landed.
  static OrderOffer? fromData(
    Map<String, Object?> data, {
    DateTime? receivedAt,
  }) {
    final String offerId = _string(data['offer_id']) ?? '';
    final String orderId = _string(data['order_id']) ?? '';
    if (offerId.isEmpty || orderId.isEmpty) return null;

    final DateTime now = receivedAt ?? DateTime.now();
    final DateTime? expiresAt =
        DateTime.tryParse(_string(data['expires_at']) ?? '')?.toLocal();
    final int? secondsLeft = _int(data['seconds_left']);

    DateTime deadline = expiresAt ?? now.add(Duration(seconds: secondsLeft ?? 30));
    if (expiresAt != null && secondsLeft != null) {
      final int byClock = expiresAt.difference(now).inSeconds;
      if ((byClock - secondsLeft).abs() > 5) {
        deadline = now.add(Duration(seconds: secondsLeft));
      }
    }

    return OrderOffer(
      offerId: offerId,
      orderId: orderId,
      orderNumber: _string(data['order_number']) ?? '',
      deadline: deadline,
      restaurant: _string(data['restaurant']) ?? '',
      restaurantArea: _string(data['restaurant_area']),
      restaurantLatitude: _double(data['restaurant_latitude']),
      restaurantLongitude: _double(data['restaurant_longitude']),
      pickupDistanceMetres: _int(data['pickup_distance_metres']),
      dropoffArea: _string(data['dropoff_area']),
      deliveryDistanceMetres: _int(data['delivery_distance_metres']),
      itemCount: _int(data['item_count']),
      earnings: _double(data['earnings']) ?? 0,
      collectCash: _double(data['collect_cash']) ?? 0,
      estimatedPrepMinutes: _int(data['estimated_prep_minutes']),
      wave: _int(data['wave']),
    );
  }
}

/// The push types the dispatch flow sends.
abstract final class OfferMessage {
  static const String offer = 'ORDER_OFFER';
  static const String cancelled = 'OFFER_CANCELLED';
  static const String autoOffline = 'rider.auto_offline';

  /// Board mode: a new order is on the board for every nearby rider, rather
  /// than offered to a few. Sent as an ordinary notification with an
  /// `order_id`. Not the same message as [offer], though the app answers both
  /// with the same card.
  static const String boardOffer = 'order.offer';

  /// Every type the app turns into a card or uses to take one down.
  static const Set<String> dispatch = <String>{
    offer,
    cancelled,
    autoOffline,
    boardOffer,
  };

  static String typeOf(Map<String, Object?> data) =>
      _string(data['type']) ?? '';
}

String? _string(Object? raw) {
  if (raw == null) return null;
  final String value = '$raw'.trim();
  return value.isEmpty ? null : value;
}

int? _int(Object? raw) => switch (raw) {
      final int v => v,
      final num v => v.round(),
      final String v => double.tryParse(v.trim())?.round(),
      _ => null,
    };

double? _double(Object? raw) => switch (raw) {
      final num v => v.toDouble(),
      final String v => double.tryParse(v.trim()),
      _ => null,
    };
