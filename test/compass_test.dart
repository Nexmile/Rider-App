import 'package:flutter_test/flutter_test.dart';
import 'package:nexmile_rider/core/services/compass.dart';

void main() {
  group('compass reading', () {
    test('reads the channel event', () {
      final CompassReading? reading = CompassReading.fromEvent(
        <Object?, Object?>{
          'heading': 412.5,
          'accuracy': 3,
          'accuracyDegrees': 12.0,
        },
      );
      expect(reading?.heading, 52.5);
      expect(reading?.accuracy, CompassAccuracy.high);
      expect(reading?.accuracyDegrees, 12.0);
      expect(reading?.needsCalibration, isFalse);
    });

    test('anything without a heading is not a reading', () {
      expect(CompassReading.fromEvent(null), isNull);
      expect(CompassReading.fromEvent(<String, Object>{'accuracy': 3}), isNull);
    });

    test('asks for a figure 8 when unreliable, low, or far out', () {
      CompassReading at(int status, [double? degrees]) =>
          CompassReading.fromEvent(<String, Object?>{
            'heading': 10,
            'accuracy': status,
            'accuracyDegrees': degrees,
          })!;
      expect(at(0).needsCalibration, isTrue);
      expect(at(1).needsCalibration, isTrue);
      expect(at(2).needsCalibration, isFalse);
      // Unsure by 30° is normal for a phone and not worth a prompt.
      expect(at(3, 30).needsCalibration, isFalse);
      expect(at(3, 60).needsCalibration, isTrue);
      // "No contact" says nothing about calibration.
      expect(at(-1).needsCalibration, isFalse);
    });
  });

  group('arrow heading', () {
    const CompassReading compass = CompassReading(heading: 200);

    test('riding follows the road, not the compass', () {
      expect(
        arrowHeading(speedMetresPerSecond: 6, course: 90, compass: compass),
        90,
      );
    });

    test('standing or walking follows the compass', () {
      expect(arrowHeading(compass: compass), 200);
      expect(
        arrowHeading(speedMetresPerSecond: 1, course: 90, compass: compass),
        200,
      );
    });

    test('with no compass the GPS direction is used at any speed', () {
      expect(arrowHeading(speedMetresPerSecond: 1, course: 90), 90);
      expect(arrowHeading(), isNull);
    });

    test('riding without a GPS direction falls back to the compass', () {
      expect(arrowHeading(speedMetresPerSecond: 6, compass: compass), 200);
    });
  });
}
