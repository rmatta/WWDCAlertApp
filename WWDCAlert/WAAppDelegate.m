//
//  WAAppDelegate.m
//  WWDCAlert
//
//  Created by Rahul Matta on 3/19/13.
//  Copyright (c) 2013 RMatta. All rights reserved.
//

#import "WAAppDelegate.h"

#import "WARefreshViewController.h"

@implementation WAAppDelegate

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.viewController = [[[WARefreshViewController alloc] initWithNibName:@"WARefreshViewController" bundle:nil] autorelease];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    [self.viewController startBackgrounding];
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    [self.viewController stopBackgrounding];
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    [UIApplication sharedApplication].applicationIconBadgeNumber = 0; //clear application badge number
}

- (void)applicationWillTerminate:(UIApplication *)application {
    UILocalNotification *notification = [UILocalNotification new];
    notification.alertBody = @"WWDC Alert App Terminated";
    notification.alertAction = @"Restart WWDC Alert";
    notification.fireDate = nil;
    notification.applicationIconBadgeNumber = 1;
    notification.soundName = UILocalNotificationDefaultSoundName;
    [[UIApplication sharedApplication] scheduleLocalNotification:notification];
}

@end
