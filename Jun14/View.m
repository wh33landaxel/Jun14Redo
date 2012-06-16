//
//  View.m
//  Jun14
//
//  Created by Axel Nunez on 6/16/12.
//  Copyright (c) 2012 CUNY. All rights reserved.
//

#import "View.h"

@implementation View

- (id) initWithFrame: (CGRect) frame{
    self = [super initWithFrame: frame];
    if(self){
        self.backgroundColor=[UIColor blueColor];
    }
    return self;
    
}

- (void) drawRect:(CGRect)rect{
    // Drawing code
    UIFont *font = [UIFont systemFontOfSize: 10.0];
    NSString *string = @"Device ID: ";
    string = [string stringByAppendingString:[[UIDevice currentDevice] uniqueIdentifier]]; //I'm aware it's depreciated for demo purposes only

    CGPoint point = CGPointMake(0.0, 10.0);
    [string drawAtPoint: point withFont: font];

    
    
}

@end
