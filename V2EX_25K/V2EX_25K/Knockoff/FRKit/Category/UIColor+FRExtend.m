//
//  UIColor+FRExtend.m
//  V2EX_25K
//
//  Created by coldmn3 on 16/9/2.
//  Copyright © 2016年 From Scratch. All rights reserved.
//

#import "UIColor+FRExtend.h"

@implementation UIColor (FRExtend)

+ (UIColor *)randomColor {
    CGFloat red = arc4random_uniform(256) / 255.0;
    CGFloat green = arc4random_uniform(256) / 255.0;
    CGFloat blue = arc4random_uniform(256) / 255.0;
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:1.0f];
}

@end
