//
//  UIView+Geometry.h
//  iOS-Categories
//
//  Created by Ludovic Riviere on 20/04/2014.
//  Copyright (c) 2014 Ludovic Riviere. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Geometry)

@property (nonatomic) CGFloat x;
@property (nonatomic) CGFloat y;
@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;

- (CGFloat)right;
- (CGFloat)bottom;

- (CGPoint)boundsCenter;
- (CGPoint)superViewBoundsCenter;

- (void)adaptInRect:(CGRect)rect;

- (void)alignOnBottomOfFrame:(CGRect)refFrame spacingWith:(CGFloat)spaceSize;
- (void)alignOnRightOfFrame:(CGRect)refFrame spacingWith:(CGFloat)spaceSize;

@end
