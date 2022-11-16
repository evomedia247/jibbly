#import "LiveviewClientPlugin.h"
#if __has_include(<liveview_client/liveview_client-Swift.h>)
#import <liveview_client/liveview_client-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "liveview_client-Swift.h"
#endif

@implementation LiveviewClientPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftLiveviewClientPlugin registerWithRegistrar:registrar];
}
@end
