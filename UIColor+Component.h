//
//  UIColor+Component.h
//  iOS-Categories
//
//  Created by Ludovic Riviere on 17/04/2014.
//  Copyright (c) 2014 Ludovic Riviere. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Component)

/**
 *  Alpha of color object
 *
 *  @return (0-255) of alpha
 */
- (int)alpha;

- (int)red;
- (int)green;
- (int)blue;


@end
