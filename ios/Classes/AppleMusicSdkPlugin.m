#import "AppleMusicSdkPlugin.h"
#if __has_include(<apple_music_sdk/apple_music_sdk-Swift.h>)
#import <apple_music_sdk/apple_music_sdk-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "apple_music_sdk-Swift.h"
#endif

@implementation AppleMusicSdkPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAppleMusicSdkPlugin registerWithRegistrar:registrar];
}
@end
