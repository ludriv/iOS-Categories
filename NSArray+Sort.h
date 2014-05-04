//
//  NSArray+Sort.h
//  iOS-Categories
//
//  Created by Ludovic Riviere on 22/04/2014.
//  Copyright (c) 2014 Ludovic Riviere. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Sort)

- (NSArray *)sortedStringArrayAlphabetically;

@end


@interface NSMutableArray (Sort)

- (void)sortStringArrayAlphabetically;

@end
