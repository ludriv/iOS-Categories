//
//  CLBeacon+Extension.m
//  iOS-Categories
//
//  Created by Ludovic Riviere on 18/04/2014.
//  Copyright (c) 2014 Ludovic Riviere. All rights reserved.
//

#import "CLBeacon+Extension.h"

@implementation CLBeacon (Extension)

- (BOOL)isEqual:(id)object
{	
	if ([object isKindOfClass:[CLBeacon class]])
	{
		if ([[[self proximityUUID] UUIDString] isEqualToString:[[object proximityUUID] UUIDString]] && [[self major] isEqual:[object major]] && [[self minor] isEqual:[object minor]])
		{
			return YES;
		}
	}
	return NO;
}

@end
