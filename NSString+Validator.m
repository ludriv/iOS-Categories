//
//  NSString+Validator.m
//  iOS-Categories
//
//  Created by Ludovic Riviere on 17/04/2014.
//  Copyright (c) 2014 Ludovic Riviere. All rights reserved.
//

#import "NSString+Validator.h"

@implementation NSString (Validator)

- (BOOL)notEmpty
{
	return ([self length] > 0);
}

- (BOOL)isEmail
{
	NSString *emailRegEx = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    return [[NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegEx] evaluateWithObject:self];
}

/**
 *  @return YES if (self) is conform to French phone number pattern.
 */
- (BOOL)isPhone
{
    NSPredicate* phonePredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", @"[0][0-9]{1}[ ]{0,1}[0-9]{2}[ ]{0,1}[0-9]{2}[ ]{0,1}[0-9]{2}[ ]{0,1}[0-9]{2}?"];
    return ([phonePredicate evaluateWithObject:self]);
}

- (BOOL)isUrl
{
	return ([NSURL URLWithString:self] != nil);
}

/**
 *
 *	more information: http://www.sroze.io/2008/10/09/regex-ipv4-et-ipv6/
 *
 *  @return YES if (self) is conform to IPv4 address pattern.
 */
- (BOOL)isIPv4
{
	NSString *iPv4RegEx = @"^([0-9]{1,3}\\.){3}\\.([0-9]{1,3})$";
	return [[NSPredicate predicateWithFormat:@"SELF MATCHES %@", iPv4RegEx] evaluateWithObject:self];
}

/**
 *
 *	more information: http://www.sroze.io/2008/10/09/regex-ipv4-et-ipv6/
 *
 *  @return YES if (self) is conform to IPv4 or IPv6 address pattern.
 */
- (BOOL)isIPv4orIPv6
{
	NSString *regEx = @"^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?))|((([0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){6}:[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){5}:([0-9A-Fa-f]{1,4}:)?[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){4}:([0-9A-Fa-f]{1,4}:){0,2}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){3}:([0-9A-Fa-f]{1,4}:){0,3}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){2}:([0-9A-Fa-f]{1,4}:){0,4}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){6}((b((25[0-5])|(1d{2})|(2[0-4]d)|(d{1,2}))b).){3}(b((25[0-5])|(1d{2})|(2[0-4]d)|(d{1,2}))b))|(([0-9A-Fa-f]{1,4}:){0,5}:((b((25[0-5])|(1d{2})|(2[0-4]d)|(d{1,2}))b).){3}(b((25[0-5])|(1d{2})|(2[0-4]d)|(d{1,2}))b))|(::([0-9A-Fa-f]{1,4}:){0,5}((b((25[0-5])|(1d{2})|(2[0-4]d)|(d{1,2}))b).){3}(b((25[0-5])|(1d{2})|(2[0-4]d)|(d{1,2}))b))|([0-9A-Fa-f]{1,4}::([0-9A-Fa-f]{1,4}:){0,5}[0-9A-Fa-f]{1,4})|(::([0-9A-Fa-f]{1,4}:){0,6}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){1,7}:))$";
	return [[NSPredicate predicateWithFormat:@"SELF MATCHES %@", regEx] evaluateWithObject:self];
	
}

- (BOOL)isAlphaNumeric
{
	if ([self notEmpty])
	{
		NSString *regEx = @"^[a-zA-Z0-9_]*$";
		return [[NSPredicate predicateWithFormat:@"SELF MATCHES %@", regEx] evaluateWithObject:self];
	}
	return NO;
}

- (BOOL)containsString:(NSString *)needle
{
    if (![self notEmpty]) return NO;
    return ([self rangeOfString:needle].location == NSNotFound) ? NO : YES;
}

- (BOOL)containsOnlyLetters
{
	if ([self notEmpty])
	{
		NSString *regEx = @"^[a-zA-Z]*$";
		return [[NSPredicate predicateWithFormat:@"SELF MATCHES %@", regEx] evaluateWithObject:self];
	}
	return NO;
}

@end
