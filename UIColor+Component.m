//
//  UIColor+Component.m
//  iOS-Categories
//
//  Created by Ludovic Riviere on 17/04/2014.
//  Copyright (c) 2014 Ludovic Riviere. All rights reserved.
//

#import "UIColor+Component.h"

@implementation UIColor (Component)

- (int)alpha
{
	return CGColorGetAlpha(self.CGColor);
}

- (int)red
{
	const CGFloat *c = CGColorGetComponents(self.CGColor);
	return c[0];
}

- (int)green
{
	const CGFloat *c = CGColorGetComponents(self.CGColor);
	return c[1];
}

- (int)blue
{
	const CGFloat *c = CGColorGetComponents(self.CGColor);
	return c[2];
}

@end
