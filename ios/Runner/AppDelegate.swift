import CoreLocation
import Flutter
import GoogleMaps
import UIKit

@main
@objc class AppDelegate: FlutterAppDelegate {
  private let compass = CompassStream()

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    // The key comes from ios/Flutter/Secrets.xcconfig through Info.plist.
    if let key = Bundle.main.object(forInfoDictionaryKey: "GMSApiKey") as? String,
       !key.isEmpty {
      GMSServices.provideAPIKey(key)
    }
    GeneratedPluginRegistrant.register(with: self)
    if let registrar = registrar(forPlugin: "NexmileCompass") {
      let messenger = registrar.messenger()
      FlutterEventChannel(name: "nexmile/compass", binaryMessenger: messenger)
        .setStreamHandler(compass)
      // On Android this channel also carries phone settings iOS does not
      // have (battery, full-screen alerts, drawing over apps). The app asks
      // those only on Android, so here it answers just the compass.
      FlutterMethodChannel(name: "nexmile/device", binaryMessenger: messenger)
        .setMethodCallHandler { call, result in
          switch call.method {
          case "hasCompass":
            result(CompassStream.isAvailable)
          case "compassLocation":
            // Core Location corrects for magnetic declination itself.
            result(nil)
          default:
            result(FlutterMethodNotImplemented)
          }
        }
    }
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}

/// The phone's compass for the `nexmile/compass` event channel: the iOS side
/// of `CompassStream.kt`, sending events of the same shape.
///
/// Core Location does here what Android does by hand: it fuses the
/// gyroscope and magnetometer and compensates for tilt. Each event is
/// `heading` in degrees clockwise from north, `accuracy` 3 while the phone
/// has a heading and 0 when it has none, and `accuracyDegrees`, the phone's
/// own estimate of the error, which is what asks the rider for a figure 8.
final class CompassStream: NSObject, FlutterStreamHandler, CLLocationManagerDelegate {
  static var isAvailable: Bool { CLLocationManager.headingAvailable() }

  private var sink: FlutterEventSink?

  /// Made on first listen, so a rider who never navigates never starts it.
  private lazy var manager: CLLocationManager = {
    let manager = CLLocationManager()
    manager.delegate = self
    // A degree is finer than the arrow can show, and each event redraws
    // the map on the Dart side.
    manager.headingFilter = 1
    // The app is portrait only.
    manager.headingOrientation = .portrait
    return manager
  }()

  func onListen(
    withArguments arguments: Any?,
    eventSink events: @escaping FlutterEventSink
  ) -> FlutterError? {
    sink = events
    manager.startUpdatingHeading()
    return nil
  }

  func onCancel(withArguments arguments: Any?) -> FlutterError? {
    manager.stopUpdatingHeading()
    sink = nil
    return nil
  }

  func locationManager(_ manager: CLLocationManager, didUpdateHeading newHeading: CLHeading) {
    guard let sink = sink else { return }
    let valid = newHeading.headingAccuracy >= 0
    // True north when the phone knows where it is; otherwise magnetic north,
    // which across India is within a degree or two of it.
    let heading = newHeading.trueHeading >= 0
      ? newHeading.trueHeading
      : newHeading.magneticHeading
    sink([
      "heading": heading,
      "accuracy": valid ? 3 : 0,
      "accuracyDegrees": valid ? newHeading.headingAccuracy : NSNull(),
    ] as [String: Any])
  }

  /// The app shows its own figure-8 card, the same one as on Android.
  func locationManagerShouldDisplayHeadingCalibration(_ manager: CLLocationManager) -> Bool {
    false
  }
}
