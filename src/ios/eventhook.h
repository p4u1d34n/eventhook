#import <Cordova/CDVPlugin.h>

@interface eventhook : CDVPlugin {
}

// The hooks for our plugin commands
- (void)echo:(CDVInvokedUrlCommand *)command;
- (void)getDate:(CDVInvokedUrlCommand *)command;
- (void)newEvent:(CDVInvokedUrlCommand *)command;

@end
