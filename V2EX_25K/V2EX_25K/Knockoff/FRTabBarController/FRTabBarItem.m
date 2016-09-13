//
//  FRTabBarItem.m
//  V2EX_25K
//
//  Created by coldmn3 on 16/9/6.
//  Copyright © 2016年 From Scratch. All rights reserved.
//

#import "FRTabBarItem.h"

#import "UIColor+FRExtend.h"


@implementation FRTabBarItem

#pragma mark - Lifecycle

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (instancetype)init {
    return [self initWithFrame:CGRectZero];
}

- (void)commonInit {
    self.backgroundColor = [UIColor randomColor];
}

@end
