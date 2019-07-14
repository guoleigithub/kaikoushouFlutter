#include "AppDelegate.h"
#include "GeneratedPluginRegistrant.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [GeneratedPluginRegistrant registerWithRegistry:self];
  // Override point for customization after application launch.
    BOOL result = [super application:application didFinishLaunchingWithOptions:launchOptions];
    UIView *vv = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    vv.backgroundColor = [UIColor redColor];
    [self.window addSubview:vv];
  return result;
}

@end
