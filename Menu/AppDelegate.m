//
//  MenuAppDelegate.m
//  Menu
//
//  Created by Robério Vitória on 06/10/11.
//  Copyright 2011 iRANV Corporation. All rights reserved.
//

#import "AppDelegate.h"
#import "MenuViewController.h"

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    MenuViewController *menuView = [[MenuViewController alloc] init];
    
    [self.window setRootViewController:menuView];
    [self.window makeKeyAndVisible];
    
    [menuView release];
    
    return YES;
}

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

@end