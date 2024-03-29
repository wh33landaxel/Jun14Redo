//
//  ProjectAppDelegate.m
//  Jun14
//
//  Created by Axel Nunez on 6/12/12.
//  Copyright (c) 2012 CUNY. All rights reserved.
//

#import "ProjectAppDelegate.h"
#import "View.h"
#import "StockView.h"

@implementation ProjectAppDelegate
@synthesize window = _window;



- (BOOL) application: (UIApplication *) application didFinishLaunchingWithOptions: (NSDictionary *) launchOptions
{
    // Override point for customization after application launch.
    UIScreen *screen = [UIScreen mainScreen];
    CGRect applicationFrame = screen.applicationFrame;
   // CGRect bounds = screen.bounds;
    
    
    CGRect someView = CGRectMake(0, 10, applicationFrame.size.width, applicationFrame.size.height/2-100);
    view = [[View alloc] initWithFrame: someView];
   // self.window = [[UIWindow alloc] initWithFrame: bounds];
    view.backgroundColor = [UIColor blueColor];
    self.window = [[UIWindow alloc] initWithFrame:someView];
    
     [self.window addSubview: view];
    
    CGRect someView2 = CGRectMake(0, applicationFrame.size.height/2, applicationFrame.size.width, applicationFrame.size.height/2);
    view2 = [[View alloc] initWithFrame: someView2];
    view2.backgroundColor = [UIColor brownColor];
  //  self.window =[[UIWindow alloc] initWithFrame:bounds];
    //self.window.backgroundColor = [UIColor whiteColor];
    
    [self.window addSubview: view2];
    
    
    CGRect stockView = CGRectMake(0, applicationFrame.size.height/2-50, 300.0, 40.0);
    sView = [[StockView alloc] initWithFrame: stockView];
    sView.backgroundColor = [UIColor redColor];
    [self.window addSubview: sView];
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void) applicationWillResignActive: (UIApplication *) application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void) applicationDidEnterBackground: (UIApplication *) application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void) applicationWillEnterForeground: (UIApplication *) application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void) applicationDidBecomeActive: (UIApplication *) application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void) applicationWillTerminate: (UIApplication *) application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
