//
//  UIButton+Control.h
//  iOS-Categories
//
//  Created by Ludovic Riviere on 29/04/2014.
//	Copyright (c) 2014 Ludovic Riviere. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Control)

+ (UIButton *)customButtonWithImage:(UIImage *)image;

+ (UIButton *)buttonWithImageNamed:(NSString *)imageName andLocalizedKeyString:(NSString *)localizedKeyString;

- (void)setColor:(UIColor *)color forState:(UIControlState)state;

@end
