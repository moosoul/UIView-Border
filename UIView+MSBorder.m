//
//  UIView+MSBorder.m
//  GottaWash
//
//  Created by Moosoul on 5/26/15.
//  Copyright (c) 2015 moosoul. All rights reserved.
//

#import "UIView+MSBorder.h"

@implementation UIView (MSBorder)


- (void)addBorderOn:(MSBorderPosition)position borderColor:(UIColor *)color width:(CGFloat)width
{
    if (position & MSBorderPositionTop) {
        [self addTopBorderWithColor:color andWidth:width];
    }
    if (position & MSBorderPositionLeft) {
        [self addLeftBorderWithColor:color andWidth:width];
    }
    if (position & MSBorderPositionBottom) {
        [self addBottomBorderWithColor:color andWidth:width];
    }
    if (position & MSBorderPositionRight) {
        [self addRightBorderWithColor:color andWidth:width];
    }
}

-(void)addTopBorderWithColor:(UIColor *)color andWidth:(CGFloat)borderWidth
{
    CALayer *border = [CALayer layer];
    border.backgroundColor = color.CGColor;
    border.frame = CGRectMake(0, borderWidth, self.frame.size.width, borderWidth);
    [self.layer addSublayer:border];
}

-(void)addBottomBorderWithColor:(UIColor *)color andWidth:(CGFloat)borderWidth
{
    CALayer *border = [CALayer layer];
    border.backgroundColor = color.CGColor;
    border.frame = CGRectMake(0, self.frame.size.height - borderWidth, self.frame.size.width, borderWidth);
    [self.layer addSublayer:border];
}

-(void)addLeftBorderWithColor:(UIColor *)color andWidth:(CGFloat)borderWidth
{
    CALayer *border = [CALayer layer];
    border.backgroundColor = color.CGColor;
    border.frame = CGRectMake(borderWidth, 0, borderWidth, self.frame.size.height);
    [self.layer addSublayer:border];
}

-(void)addRightBorderWithColor:(UIColor *)color andWidth:(CGFloat)borderWidth
{
    CALayer *border = [CALayer layer];
    border.backgroundColor = color.CGColor;
    border.frame = CGRectMake(self.frame.size.width - borderWidth, 0, borderWidth, self.frame.size.height);
    [self.layer addSublayer:border];
}


@end
