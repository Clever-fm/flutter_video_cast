import Flutter
import UIKit

@available(iOS 11.0, *)
public class SwiftFlutterVideoCastPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let factory = AirPlayFactory(registrar: registrar)
        let chromeCastFactory = ChromeCastFactory(registrar: registrar)
        registrar.register(factory, withId: "AirPlayButton")
        registrar.register(chromeCastFactory, withId: "ChromeCastButton")
    }
}
