//
//  ABROUTERAppDelegate.m
//  ABRouter
//
//  Created by rushairer on 04/30/2020.
//  Copyright (c) 2020 rushairer. All rights reserved.
//

#import "ABROUTERAppDelegate.h"
#import <ABRouter/ABRouter.h>

@implementation ABROUTERAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    __weak __typeof(self) weakSelf = self;

    [[ABRouter sharedInstance] registerAction:@"view1"
                        withCompletionHandler:^(NSDictionary * _Nonnull userInfo) {
        UIViewController *view1 = [[UIViewController alloc] init];
        view1.view.backgroundColor = [UIColor redColor];
        [(UINavigationController *)weakSelf.window.rootViewController pushViewController:view1
                                                                            animated:YES];
    }];
    
    [[ABRouter sharedInstance] registerAction:@"view2"
                        withCompletionHandler:^(NSDictionary * _Nonnull userInfo) {
        UIViewController *view2 = [[UIViewController alloc] init];
        view2.view.backgroundColor = [UIColor blueColor];
        [(UINavigationController *)weakSelf.window.rootViewController pushViewController:view2
                                                                            animated:YES];
    }];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
