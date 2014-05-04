//
//  UIButton+Control.m
//  iOS-Categories
//
//  Created by Ludovic Riviere on 29/04/2014.
//	Copyright (c) 2014 Ludovic Riviere. All rights reserved.
//

#import "UIButton+Control.h"

@implementation UIButton (Control)

+ (UIButton *)customButtonWithImage:(UIImage *)image
{
	UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
	[button setImage:image forState:UIControlStateNormal];
	[button sizeToFit];
	return button;
}

+ (UIButton *)buttonWithImageNamed:(NSString *)imageName andLocalizedKeyString:(NSString *)localizedKeyString
{
	UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
	
	NSString *selectedImageName = [NSString stringWithFormat:@"%@%@", imageName, @"_selected"];
	
	UIImage *normal = [UIImage imageNamed:imageName];
	UIImage *selected = [UIImage imageNamed:selectedImageName];
	UIImage *highlighted = [UIImage imageNamed:[NSString stringWithFormat:@"%@%@", imageName, @"_highlighted"]];
	UIImage *selected_highlighted = [UIImage imageNamed:[NSString stringWithFormat:@"%@%@", selectedImageName, @"_highlighted"]];
	
	// to do :  if text setBackground image else setImage
	
	[btn setBackgroundImage:normal forState:UIControlStateNormal];
	
	if (selected)
		[btn setBackgroundImage:selected forState:UIControlStateSelected];
	else if (highlighted)
		[btn setBackgroundImage:highlighted forState:UIControlStateSelected];
	
	if (highlighted)
		[btn setBackgroundImage:highlighted forState:UIControlStateHighlighted];
	if (selected_highlighted)
		[btn setBackgroundImage:selected_highlighted forState:UIControlStateSelected|UIControlStateHighlighted];
	
	
	if (localizedKeyString)
	{
		[btn setTitle:NSLocalizedString(localizedKeyString, nil) forState:UIControlStateNormal];
		[btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
	}
	
	// to do :  if text
	
	[btn setFrame:CGRectMake(0, 0, btn.currentBackgroundImage.size.width, btn.currentBackgroundImage.size.height)];
	
	//  else set sizeToFit
	
	return btn;
}

- (void)setColor:(UIColor *)color forState:(UIControlState)state
{
    UIView *colorView = [[UIView alloc] initWithFrame:self.frame];
    colorView.backgroundColor = color;
	
    UIGraphicsBeginImageContext(colorView.bounds.size);
    [colorView.layer renderInContext:UIGraphicsGetCurrentContext()];
	
    UIImage *colorImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
	
    [self setBackgroundImage:colorImage forState:state];
}

@end
