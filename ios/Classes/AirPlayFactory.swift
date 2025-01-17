//
//  AirPlayFactory.swift
//  flutter_video_cast
//
//  Created by Alessio Valentini on 07/08/2020.
//

import Flutter

@available(iOS 11.0, *)
public class AirPlayFactory: NSObject, FlutterPlatformViewFactory {
    let registrar: FlutterPluginRegistrar

    init(registrar: FlutterPluginRegistrar) {
        self.registrar = registrar
    }

    public func create(withFrame frame: CGRect, viewIdentifier viewId: Int64, arguments args: Any?) -> FlutterPlatformView {
        return AirPlayController(withFrame: frame, viewIdentifier: viewId, arguments: args, registrar: registrar)
    }

    public func createArgsCodec() -> FlutterMessageCodec & NSObjectProtocol {
        return FlutterStandardMessageCodec.sharedInstance()
    }
}
