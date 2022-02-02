import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_p2p_tcpip/flutter_p2p_tcpip.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_p2p_tcpip');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterP2pTcpip.platformVersion, '42');
  });
}
