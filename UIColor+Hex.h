//
//  UIColor+Hex.h
//  iOS-Categories
//
//  Created by Ludovic Riviere on 20/04/2014.
//  Copyright (c) 2014 Ludovic Riviere. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIColor+Component.h"

@interface UIColor (Hex)

+ (int)hexToDec:(NSString *)hex;
+ (int)hexDigitToInt:(unichar)d;

+ (UIColor *)fromHex:(NSString *)hex;
- (NSString *)toHex;

@end
