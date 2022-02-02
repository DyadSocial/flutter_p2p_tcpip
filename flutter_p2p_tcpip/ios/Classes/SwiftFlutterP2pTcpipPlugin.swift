import Flutter
import UIKit

public class SwiftFlutterP2pTcpipPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_p2p_tcpip", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterP2pTcpipPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
