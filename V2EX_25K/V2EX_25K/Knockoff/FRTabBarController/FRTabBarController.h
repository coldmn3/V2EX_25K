//
//  FRTabBarController.h
//  V2EX_25K
//
//  Created by coldmn3 on 16/9/4.
//  Copyright © 2016年 From Scratch. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FRTabBarController, FRTabBar;

@protocol FRTabBarControllerDelegate <NSObject>

@optional

/**
 *  是否可以选中某个viewController
 *
 */
- (BOOL)tabBarController:(FRTabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController;

/**
 *  选中了某个viewController
 *
 */
- (void)tabBarController:(FRTabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController;

@end

/**
 *  Tab Controller
 */
@interface FRTabBarController : UIViewController

@property (nonatomic, weak) id<FRTabBarControllerDelegate> delegate;

@property (nonatomic, copy) NSArray *viewControllers;

@property (nonatomic, readonly, strong) FRTabBar *tabBar;

@property (nonatomic, weak) UIViewController *selectedViewController;

@property (nonatomic, assign) NSUInteger selectedIndex;

@end
