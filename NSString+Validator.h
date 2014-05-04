//
//  NSString+Validator.h
//  iOS-Categories
//
//  Created by Ludovic Riviere on 17/04/2014.
//  Copyright (c) 2014 Ludovic Riviere. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Validator)

- (BOOL)notEmpty;

- (BOOL)isEmail;

/**
 *  @return YES if (self) is conform to French phone number pattern.
 */
- (BOOL)isPhone;

- (BOOL)isUrl;

/**
 *
 *	more information: http://www.sroze.io/2008/10/09/regex-ipv4-et-ipv6/
 *
 *  @return YES if (self) is conform to IPv4 address pattern.
 */
- (BOOL)isIPv4;

/**
 *
 *	more information: http://www.sroze.io/2008/10/09/regex-ipv4-et-ipv6/
 *
 *  @return YES if (self) is conform to IPv4 or IPv6 address pattern.
 */
- (BOOL)isIPv4orIPv6;

- (BOOL)isAlphaNumeric;

- (BOOL)containsString:(NSString *)needle;
- (BOOL)containsOnlyLetters;


@end
