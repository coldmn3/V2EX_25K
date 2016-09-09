//
//  UIView+FRExtend.h
//  V2EX_25K
//
//  Created by coldmn3 on 16/9/2.
//  Copyright © 2016年 From Scratch. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (FRExtend)

/**
 *  frame.origin.y
 */
@property (nonatomic, assign) CGFloat fr_top;

/**
 *  frame.origin.x
 */
@property (nonatomic, assign) CGFloat fr_left;

/**
 *  frame.origin.y + frame.size.height
 */
@property (nonatomic, assign) CGFloat fr_bottom;

/**
 *  frame.origin.x + frame.size.width
 */
@property (nonatomic, assign) CGFloat fr_right;

/**
 *  frame.size.width
 */
@property (nonatomic, assign) CGFloat fr_width;

/**
 *  frame.size.height
 */
@property (nonatomic, assign) CGFloat fr_height;

/**
 *  center.x
 */
@property (nonatomic, assign) CGFloat fr_centerX;

/**
 *  center.y
 */
@property (nonatomic, assign) CGFloat fr_centerY;

/**
 *  frame.origin
 */
@property (nonatomic, assign) CGPoint fr_origin;

/**
 *  frame.size
 */
@property (nonatomic, assign) CGSize fr_size;

@end
