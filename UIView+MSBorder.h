//
//  UIView+MSBorder.h
//  GottaWash
//
//  Created by Moosoul on 5/26/15.
//  Copyright (c) 2015 moosoul. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_OPTIONS(NSUInteger, MSBorderPosition){
    MSBorderPositionTop = 1 << 0,
    MSBorderPositionLeft = 1 << 1,
    MSBorderPositionBottom = 1 << 2,
    MSBorderPositionRight = 1 << 3,
};

@interface UIView (MSBorder)

-(void)addBorderOn:(MSBorderPosition)position borderColor:(UIColor *)color width:(CGFloat)width;


@end
