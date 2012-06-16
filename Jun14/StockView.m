//
//  StockView.m
//  Jun14
//
//  Created by Axel Nunez on 6/16/12.
//  Copyright (c) 2012 CUNY. All rights reserved.
//

#import "StockView.h"

@implementation StockView



- (void) drawRect:(CGRect)rect{
    // Drawing code
        
        NSURL *url = [[NSURL alloc] initWithString:
                      @"http://finance.yahoo.com/d/quotes.csv?s=GME&f=sl1t1"];
        
        NSError *error;
        NSString *string4 = [[NSString alloc]
                             initWithContentsOfURL: url
                             encoding: NSUTF8StringEncoding
                             error: &error
                             ];

    UIFont *font = [UIFont systemFontOfSize: 16.0];
    CGPoint point = CGPointMake(0.0, 10.0);
    [string4 drawAtPoint:point withFont:font];
    
}


@end
