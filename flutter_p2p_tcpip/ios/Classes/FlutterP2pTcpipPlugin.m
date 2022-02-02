#import "FlutterP2pTcpipPlugin.h"
#if __has_include(<flutter_p2p_tcpip/flutter_p2p_tcpip-Swift.h>)
#import <flutter_p2p_tcpip/flutter_p2p_tcpip-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_p2p_tcpip-Swift.h"
#endif

@implementation FlutterP2pTcpipPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterP2pTcpipPlugin registerWithRegistrar:registrar];
}
@end
