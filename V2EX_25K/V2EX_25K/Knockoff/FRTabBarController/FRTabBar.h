//
//  FRTabBar.h
//  V2EX_25K
//
//  Created by coldmn3 on 16/9/6.
//  Copyright © 2016年 From Scratch. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FRTabBar;

@protocol FRTabBarDelegate <NSObject>

@required

- (BOOL)tabBar:(FRTabBar *)tabBar shouldSelectItemAtIndex:(NSInteger)index;

- (void)tabBar:(FRTabBar *)tabBar didSelectItemAtIndex:(NSInteger)index;

@end

@interface FRTabBar : UIView

@property (nonatomic, weak) id<FRTabBarDelegate> delegate;

@property (nonatomic, copy) NSArray *items;

@property (nonatomic, assign) CGFloat height;

@end
