//
//  UIColor+Hex.m
//  iOS-Categories
//
//  Created by Ludovic Riviere on 20/04/2014.
//  Copyright (c) 2014 Ludovic Riviere. All rights reserved.
//

#import "UIColor+Hex.h"


@implementation UIColor (Hex)

+ (UIColor *)fromHex:(NSString *)hex
{
	if ([hex characterAtIndex:0] == '#')
		hex = [hex substringWithRange:NSMakeRange(1, [hex length]-1)];
    
    if ([hex length] == 3) {
        NSString *r = [hex substringWithRange:NSMakeRange(0, 1)];
        NSString *g = [hex substringWithRange:NSMakeRange(1, 1)];
        NSString *b = [hex substringWithRange:NSMakeRange(2, 1)];
        hex = [NSString stringWithFormat:@"%@%@%@%@%@%@", r, r, g, g, b, b];
    }
    
    float a = 1, r, g, b;
    
    // if #aarrggbb
    if ([hex length] == 8)
    {
        a = [UIColor hexToDec:[hex substringWithRange:NSMakeRange(0, 2)]]/255.0f;
        hex = [hex substringWithRange:NSMakeRange(2, hex.length - 2)];
    }
    
    // #rrggbb
    r = [UIColor hexToDec:[hex substringWithRange:NSMakeRange(0, 2)]]/255.0f;
    g = [UIColor hexToDec:[hex substringWithRange:NSMakeRange(2, 2)]]/255.0f;
    b = [UIColor hexToDec:[hex substringWithRange:NSMakeRange(4, 2)]]/255.0f;
    
    return [UIColor colorWithRed:r green:g blue:b alpha:a];
}

- (NSString *)toHex
{
	if (self.alpha < 1.0f)
	{
		return [NSString stringWithFormat:@"#%02x%02x%02x", self.red, self.green, self.blue];
	}
	else
	{
		return [NSString stringWithFormat:@"#%02x%02x%02x%02x", self.alpha, self.red, self.green, self.blue];
	}
}

#pragma mark - Private

+ (int)hexToDec:(NSString *)hex
{
	NSUInteger nbChars = [hex length];
	if (nbChars > 1)
    {
		return pow(16, nbChars-1) * ((int) [UIColor hexDigitToInt:[hex characterAtIndex:0]]) + [UIColor hexToDec:[hex substringWithRange:NSMakeRange(1, nbChars-1)]];
	}
    else
    {
		return [UIColor hexDigitToInt:[hex characterAtIndex:0]];
	}
}

+ (int)hexDigitToInt:(unichar)d
{
    int result = 0;
    switch (d)
    {
        case '0': result = 0; break;
        case '1': result = 1; break;
        case '2': result = 2; break;
        case '3': result = 3; break;
        case '4': result = 4; break;
        case '5': result = 5; break;
        case '6': result = 6; break;
        case '7': result = 7; break;
        case '8': result = 8; break;
        case '9': result = 9; break;
        case 'a': result = 10; break;
        case 'b': result = 11; break;
        case 'c': result = 12; break;
        case 'd': result = 13; break;
        case 'e': result = 14; break;
        case 'f': result = 15; break;
        case 'A': result = 10; break;
        case 'B': result = 11; break;
        case 'C': result = 12; break;
        case 'D': result = 13; break;
        case 'E': result = 14; break;
        case 'F': result = 15; break;
    }
    return result;
}

@end
