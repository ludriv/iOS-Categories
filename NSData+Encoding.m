//
//  NSData+Encoding.m
//  iOS-Categories
//
//  Created by Ludovic Riviere on 28/04/2014.
//	Copyright (c) 2014 Ludovic Riviere. All rights reserved.
//

#import "NSData+Encoding.h"

@implementation NSData (Encoding)

- (NSString *)UTF8String
{
	return [[NSString alloc] initWithData:self encoding:NSUTF8StringEncoding];
}

@end
