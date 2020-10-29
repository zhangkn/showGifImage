//
//  AppDelegate.m
//  showGifImage
//
//  Created by mac on 2020/10/29.
//
#import "KNViewController.h"

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    KNViewController * vc = [[KNViewController alloc] init];
    
    UINavigationController * na = [[UINavigationController alloc] initWithRootViewController:vc];
    self.window.rootViewController = na;
    [self.window makeKeyAndVisible];
    
//kn_window
    
    return YES;
}




@end
