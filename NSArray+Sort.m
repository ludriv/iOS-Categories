//
//  NSArray+Sort.m
//  iOS-Categories
//
//  Created by Ludovic Riviere on 22/04/2014.
//  Copyright (c) 2014 Ludovic Riviere. All rights reserved.
//

#import "NSArray+Sort.h"

@implementation NSArray (Sort)

- (NSArray *)sortedStringArrayAlphabetically
{
	return [self sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
		return [(NSString *) obj1 compare:(NSString *) obj2];
	}];
}

@end


@implementation NSMutableArray (Sort)

- (void)sortStringArrayAlphabetically
{
	[self sortUsingComparator:^NSComparisonResult(id obj1, id obj2) {
		return [(NSString *) obj1 compare:(NSString *) obj2];
	}];
}

@end