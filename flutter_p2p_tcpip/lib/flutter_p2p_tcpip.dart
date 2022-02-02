
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterP2pTcpip {
  static const MethodChannel _channel = MethodChannel('flutter_p2p_tcpip');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
