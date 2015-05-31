//
//  UIView+Layer.h
//  layerTest
//
//  Created by moosoul on 15/4/10.
//  Copyright (c) 2015年 moosoul. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    borderPositionTypeTop,
    borderPositionTypeLeft,
    borderPositionTypeBottom,
    borderPositionTypeRight,
} borderPositionType;

@interface UIView (Layer)

- (void)addBorderWithColor:(UIColor *)color BorderWidth:(CGFloat)borderWidth BorderPosition:(borderPositionType)borderPosition;

@end
