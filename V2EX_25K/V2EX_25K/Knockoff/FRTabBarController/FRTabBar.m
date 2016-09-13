//
//  FRTabBar.m
//  V2EX_25K
//
//  Created by coldmn3 on 16/9/6.
//  Copyright © 2016年 From Scratch. All rights reserved.
//

#import "FRTabBar.h"

#import "FRTabBarItem.h"

@implementation FRTabBar

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
    
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    for (FRTabBarItem *item in self.items) {
        
    }
}

#pragma mark - Action

- (void)tabBarItemDidTouchDown:(FRTabBarItem *)item {
    
}

#pragma mark - Setter

- (void)setItems:(NSArray *)items {
    for (FRTabBarItem *item in _items) {
        [item removeFromSuperview];
    }
    
    _items = items;
    
    for (FRTabBarItem *item in _items) {
        [item addTarget:self action:@selector(tabBarItemDidTouchDown:) forControlEvents:UIControlEventTouchDown];
        
        // 触发layoutSubviews
        [self addSubview:item];
    }
}

@end
