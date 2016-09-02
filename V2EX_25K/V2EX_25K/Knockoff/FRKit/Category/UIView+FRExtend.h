//
//  UIView+FRExtend.h
//  V2EX_25K
//
//  Created by coldmn3 on 16/9/2.
//  Copyright © 2016年 From Scratch. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (FRExtend)

@property (nonatomic, assign) CGFloat left;        ///< Shortcut for frame.origin.x.
@property (nonatomic, assign) CGFloat top;         ///< Shortcut for frame.origin.y
@property (nonatomic, assign) CGFloat right;       ///< Shortcut for frame.origin.x + frame.size.width
@property (nonatomic, assign) CGFloat bottom;      ///< Shortcut for frame.origin.y + frame.size.height
@property (nonatomic, assign) CGFloat width;       ///< Shortcut for frame.size.width.
@property (nonatomic, assign) CGFloat height;      ///< Shortcut for frame.size.height.
@property (nonatomic, assign) CGFloat centerX;     ///< Shortcut for center.x
@property (nonatomic, assign) CGFloat centerY;     ///< Shortcut for center.y
@property (nonatomic, assign) CGPoint origin;      ///< Shortcut for frame.origin.
@property (nonatomic, assign) CGSize  size;        ///< Shortcut for frame.size.

@end
