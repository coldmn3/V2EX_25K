//
//  UIView+FRExtend.m
//  V2EX_25K
//
//  Created by coldmn3 on 16/9/2.
//  Copyright © 2016年 From Scratch. All rights reserved.
//

#import "UIView+FRExtend.h"

@implementation UIView (FRExtend)

- (CGFloat)fr_top {
    return self.frame.origin.y;
}

- (void)setFr_top:(CGFloat)fr_top {
    CGRect frame = self.frame;
    frame.origin.y = fr_top;
    self.frame = frame;
}

- (CGFloat)fr_left {
    return self.frame.origin.x;
}

- (void)setFr_left:(CGFloat)fr_left {
    CGRect frame = self.frame;
    frame.origin.x = fr_left;
    self.frame = frame;
}

- (CGFloat)fr_bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setFr_bottom:(CGFloat)fr_bottom {
    CGRect frame = self.frame;
    frame.origin.y = fr_bottom - frame.size.height;
    self.frame = frame;
}

- (CGFloat)fr_right {
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setFr_right:(CGFloat)fr_right {
    CGRect frame = self.frame;
    frame.origin.x = fr_right - frame.size.width;
    self.frame = frame;
}

- (CGFloat)fr_width {
    return self.frame.size.width;
}

- (void)setFr_width:(CGFloat)fr_width {
    CGRect frame = self.frame;
    frame.size.width = fr_width;
    self.frame = frame;
}

- (CGFloat)fr_height {
    return self.frame.size.height;
}

- (void)setFr_height:(CGFloat)fr_height {
    CGRect frame = self.frame;
    frame.size.height = fr_height;
    self.frame = frame;
}

- (CGFloat)fr_centerX {
    return self.center.x;
}

- (void)setFr_centerX:(CGFloat)fr_centerX {
    self.center = CGPointMake(fr_centerX, self.center.y);
}

- (CGFloat)fr_centerY {
    return self.center.y;
}

- (void)setFr_centerY:(CGFloat)fr_centerY {
    self.center = CGPointMake(self.center.x, fr_centerY);
}

- (CGPoint)fr_origin {
    return self.frame.origin;
}

- (void)setFr_origin:(CGPoint)fr_origin {
    CGRect frame = self.frame;
    frame.origin = fr_origin;
    self.frame = frame;
}

- (CGSize)fr_size {
    return self.frame.size;
}

- (void)setFr_size:(CGSize)fr_size {
    CGRect frame = self.frame;
    frame.size = fr_size;
    self.frame = frame;
}

@end
