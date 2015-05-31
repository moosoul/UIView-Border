//
//  UIView+Layer.m
//  layerTest
//
//  Created by moosoul on 15/4/10.
//  Copyright (c) 2015年 moosoul. All rights reserved.
//

#import "UIView+Layer.h"

@implementation UIView (Layer)

- (void)addBorderWithColor:(UIColor *)color BorderWidth:(CGFloat)borderWidth BorderPosition:(borderPositionType)borderPosition
{
    switch (borderPosition) {
        case borderPositionTypeTop:
        {
            [self addTopBorderWithColor:color BorderWidth:borderWidth];
        }
            break;
        case borderPositionTypeLeft:
        {
            [self addLeftBorderWithColor:color BorderWidth:borderWidth];
        }
            break;
        case borderPositionTypeBottom:
        {
            [self addBottomBorderWithColor:color BorderWidth:borderWidth];
        }
            break;
        case borderPositionTypeRight:
        {
            [self addRightBorderWithColor:color BorderWidth:borderWidth];
        }
            break;
        default:
            break;
    }
}

- (void)addTopBorderWithColor:(UIColor *)color BorderWidth:(CGFloat)borderWidth
{
    CALayer *layer = [[CALayer alloc] init];
    layer.frame = CGRectMake(0, 0, self.frame.size.width, borderWidth);
    layer.backgroundColor = color.CGColor;
    [self.layer addSublayer:layer];
}

- (void)addLeftBorderWithColor:(UIColor *)color BorderWidth:(CGFloat)borderWidth
{
    CALayer *layer = [[CALayer alloc] init];
    layer.frame = CGRectMake(0, 0, borderWidth, self.frame.size.height);
    layer.backgroundColor = color.CGColor;
    [self.layer addSublayer:layer];
}

- (void)addBottomBorderWithColor:(UIColor *)color BorderWidth:(CGFloat)borderWidth
{
    CALayer *layer = [[CALayer alloc] init];
    layer.frame = CGRectMake(0, self.frame.size.height - borderWidth, self.frame.size.width, borderWidth);
    layer.backgroundColor = color.CGColor;
    [self.layer addSublayer:layer];
}

- (void)addRightBorderWithColor:(UIColor *)color BorderWidth:(CGFloat)borderWidth
{
    CALayer *layer = [[CALayer alloc] init];
    layer.frame = CGRectMake(self.frame.size.width - borderWidth, 0, borderWidth, self.frame.size.height);
    layer.backgroundColor = color.CGColor;
    [self.layer addSublayer:layer];
}

@end
