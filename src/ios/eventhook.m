#import "eventhook.h"

#import <Cordova/CDVAvailability.h>


@implementation eventhook

- (void)pluginInitialize {
    NSString* phrase = "INIT eventhook";
    NSLog(@"%@", phrase);
}

- (void)echo:(CDVInvokedUrlCommand *)command {
  NSString* phrase = [command.arguments objectAtIndex:0];
  NSLog(@"%@ lemons", phrase);
}

- (void)newEvent:(CDVInvokedUrlCommand *)command {
  NSString* a = [command.arguments objectAtIndex:0];
  NSString* b = [command.arguments objectAtIndex:1];
  NSString* c = [command.arguments objectAtIndex:2];
  NSString* d = [command.arguments objectAtIndex:3];
  NSLog(@"%@", a);
  NSLog(@"%@", b);
  NSLog(@"%@", c);
  NSLog(@"%@", d);
}

- (void)getDate:(CDVInvokedUrlCommand *)command {
  NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
  NSLocale *enUSPOSIXLocale = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
  [dateFormatter setLocale:enUSPOSIXLocale];
  [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];

  NSDate *now = [NSDate date];
  NSString *iso8601String = [dateFormatter stringFromDate:now];

  CDVPluginResult *result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:iso8601String];
  [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}



@end
