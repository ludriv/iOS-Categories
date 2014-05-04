//
//  UIView+Geometry.m
//  iOS-Categories
//
//  Created by Ludovic Riviere on 20/04/2014.
//  Copyright (c) 2014 Ludovic Riviere. All rights reserved.
//

#import "UIView+Geometry.h"

@implementation UIView (Geometry)

- (void)setX:(CGFloat)x
{
	CGRect rect = self.frame;
	rect.origin.x = x;
	self.frame = rect;
}

- (CGFloat)x
{
	return self.frame.origin.x;
}

- (void)setY:(CGFloat)y
{
	CGRect rect = self.frame;
	rect.origin.y = y;
	self.frame = rect;
}

- (CGFloat)y
{
	return self.frame.origin.y;
}

- (void)setWidth:(CGFloat)width
{
	CGRect rect = self.frame;
	rect.size.width = width;
	self.frame = rect;
}

- (CGFloat)width
{
	return self.frame.size.width;
}

- (void)setHeight:(CGFloat)height
{
	CGRect rect = self.frame;
	rect.size.height = height;
	self.frame = rect;
}

- (CGFloat)height
{
	return self.frame.size.height;
}

- (CGFloat)right
{
	return self.frame.origin.x + self.frame.size.width;
}

- (CGFloat)bottom
{
	return self.frame.origin.y + self.frame.size.height;
}

- (CGPoint)boundsCenter
{
	return CGPointMake(self.bounds.size.width/2, self.bounds.size.height/2);
}

- (CGPoint)superViewBoundsCenter
{
	if ([self superview])
	{
		return [self.superview boundsCenter];
	}
	return CGPointZero;
}

- (void)adaptInRect:(CGRect)rect
{	
	if (self.frame.size.width > rect.size.width)
	{
		[self setFrame:CGRectMake(0, 0,rect.size.width, self.frame.size.height * rect.size.width / self.frame.size.width)];
	}
	
	if (self.frame.size.height > rect.size.height)
	{
		[self setFrame:CGRectMake(0, 0, self.frame.size.width * rect.size.height / self.frame.size.height, rect.size.height)];
	}
	
	[self setCenter:CGPointMake(rect.origin.x + rect.size.width / 2, rect.origin.y + rect.size.height / 2)];
}


@end
