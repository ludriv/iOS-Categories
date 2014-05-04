//
//  UINavigationController+Rotation.m
//  iOS-Categories
//
//  Created by Ludovic Riviere on 22/04/2014.
//  Copyright (c) 2014 Ludovic Riviere. All rights reserved.
//

#import "UINavigationController+Rotation.h"

@implementation UINavigationController (Rotation)

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
	return [self.visibleViewController preferredInterfaceOrientationForPresentation];
}

- (NSUInteger)supportedInterfaceOrientations
{
	return [self.visibleViewController supportedInterfaceOrientations];
}

- (BOOL)shouldAutorotate
{
	return [self.visibleViewController shouldAutorotate];
}

@end
