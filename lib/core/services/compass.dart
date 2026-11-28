import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// How sure the phone is of its compass, as Android reports it.
enum CompassAccuracy { unreliable, low, medium, high }

/// One reading of the phone's compass.
@immutable
class CompassReading {
  const CompassReading({
    required this.heading,
    this.accuracy = CompassAccuracy.high,
    this.accuracyDegrees,
  });

  /// Degrees clockwise from true north.
  final double heading;

  final CompassAccuracy accuracy;

  /// The phone's own estimate of the error, when it gives one.
  final double? accuracyDegrees;

  /// Poor enough that the rider should move the phone in a figure 8, the
  /// way Google Maps asks. The status alone, plus an error estimate wide
  /// enough to point down the wrong street: a phone that is merely
  /// unsure by 30° is normal and not worth a prompt.
  bool get needsCalibration =>
      accuracy == CompassAccuracy.unreliable ||
      accuracy == CompassAccuracy.low ||
      (accuracyDegrees != null && accuracyDegrees! > 45);

  /// Reads an event from the `nexmile/compass` channel. Null for anything
  /// that is not one.
  static CompassReading? fromEvent(Object? raw) {
    if (raw is! Map) return null;
    final Object? heading = raw['heading'];
    if (heading is! num) return null;
    final Object? status = raw['accuracy'];
    final Object? degrees = raw['accuracyDegrees'];
    return CompassReading(
      heading: heading.toDouble() % 360,
      accuracy: switch (status) {
        0 => CompassAccuracy.unreliable,
        1 => CompassAccuracy.low,
        2 => CompassAccuracy.medium,
        // 3, and -1 ("no contact"), which says nothing about calibration.
        _ => CompassAccuracy.high,
      },
      accuracyDegrees: degrees is num ? degrees.toDouble() : null,
    );
  }
}

/// The phone's compass, from the `nexmile/compass` channel: `CompassStream.kt`
/// on Android, the `CompassStream` in `AppDelegate.swift` on iOS.
///
/// Safe anywhere: on another platform, in a test, or on a phone with no
/// compass, the stream simply never says anything and the arrow keeps
/// following the GPS direction of travel, as it did before there was a
/// compass.
class Compass {
  const Compass();

  static const EventChannel _events = EventChannel('nexmile/compass');
  static const MethodChannel _device = MethodChannel('nexmile/device');

  static bool get _supported =>
      defaultTargetPlatform == TargetPlatform.android ||
      defaultTargetPlatform == TargetPlatform.iOS;

  /// Readings for as long as they are listened to. The sensors run only
  /// while someone is listening, so the navigation screen pays for them and
  /// nothing else does.
  Stream<CompassReading> readings() async* {
    if (!_supported) return;
    // Asked first through the ordinary channel, whose absence is a caught
    // exception: listening to an event channel nobody answers reports an
    // error instead of simply staying quiet.
    final bool available;
    try {
      available = await _device.invokeMethod<bool>('hasCompass') ?? false;
    } catch (_) {
      return;
    }
    if (!available) return;
    yield* _events
        .receiveBroadcastStream()
        .map(CompassReading.fromEvent)
        .where((CompassReading? reading) => reading != null)
        .cast<CompassReading>();
  }

  /// Where the rider is, so the compass can turn magnetic north into true
  /// north. Once per navigation is plenty.
  Future<void> setLocation(double latitude, double longitude) async {
    if (!_supported) return;
    try {
      await _device.invokeMethod<void>(
        'compassLocation',
        <String, double>{'latitude': latitude, 'longitude': longitude},
      );
    } catch (_) {
      // No declination correction: off by a degree or two, still fine.
    }
  }
}

/// Which way the navigation arrow points, the way Google Maps decides.
///
/// Moving at riding speed, the GPS direction of travel: on a bike the
/// compass sits beside an engine and a steel frame, and the road is the
/// truth anyway. Slower than that, standing at a signal or walking to a
/// door, the compass, so the arrow turns as the rider turns. With neither,
/// whatever there is.
double? arrowHeading({
  double? speedMetresPerSecond,
  double? course,
  CompassReading? compass,
}) {
  final bool riding = (speedMetresPerSecond ?? 0) >= ridingSpeed;
  if (riding && course != null) return course;
  return compass?.heading ?? course;
}

/// About 7 km/h: faster than walking, slower than any riding.
const double ridingSpeed = 2.0;
