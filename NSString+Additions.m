//
//  NSString+Additions.m
//  iOS-Categories
//
//  Created by Ludovic Riviere on 20/04/2014.
//  Copyright (c) 2014 Ludovic Riviere. All rights reserved.
//

#import "NSString+Additions.h"

@implementation NSString (Additions)

- (NSString *)trim
{
	return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

@end
