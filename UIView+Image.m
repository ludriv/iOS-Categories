//
//  UIView+Image.m
//  iOS-Categories
//
//  Created by Ludovic Riviere on 17/04/2014.
//  Copyright (c) 2014 Ludovic Riviere. All rights reserved.
//

#import "UIView+Image.h"

@implementation UIView (Image)

- (UIImage *)toImage
{
	UIGraphicsBeginImageContext(self.bounds.size);
	
	[self.layer renderInContext:UIGraphicsGetCurrentContext()];
	
	UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
	
	UIGraphicsEndImageContext();
	
	return image;
}

@end
