//
//  WAAppDelegate.h
//  WWDCAlert
//
//  Created by Rahul Matta on 3/19/13.
//  Copyright (c) 2013 RMatta. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "WARefreshViewController.h"

@interface WAAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) WARefreshViewController *viewController;

@end
