//
//  ProjectAppDelegate.h
//  Jun14
//
//  Created by Axel Nunez on 6/12/12.
//  Copyright (c) 2012 CUNY. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;
@class StockView;


@interface ProjectAppDelegate : UIResponder <UIApplicationDelegate> {
    View *view;
    View *view2;
    StockView *sView;
    UIWindow *_window;
}

@property (strong, nonatomic) UIWindow *window;

@end
