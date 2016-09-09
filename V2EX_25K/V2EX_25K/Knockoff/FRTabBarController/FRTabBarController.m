//
//  FRTabBarController.m
//  V2EX_25K
//
//  Created by coldmn3 on 16/9/4.
//  Copyright © 2016年 From Scratch. All rights reserved.
//

#import "FRTabBarController.h"

#import "FRTabBar.h"

@interface FRTabBarController ()

@property (nonatomic, strong) UIView *contentView;

@property (nonatomic, readwrite, strong) FRTabBar *tabBar;

@end

@implementation FRTabBarController

#pragma mark - Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.contentView];
    [self.view addSubview:self.tabBar];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    
}

#pragma mark - Setter

- (void)setSelectedIndex:(NSUInteger)selectedIndex {
    NSAssert(selectedIndex >= [self.viewControllers count], @"selectedIndex out of bounds");
    
    UIViewController *willBeSelectedViewController = self.viewControllers[selectedIndex];
    
    if ([self.delegate respondsToSelector:@selector(tabBarController:shouldSelectViewController:)]) {
        if (![self.delegate tabBarController:self shouldSelectViewController:willBeSelectedViewController]) {
            return;
        }
    }
    
    if (self.selectedViewController == willBeSelectedViewController) {
        return;
    }
    
    if (self.selectedViewController) {
        [self.selectedViewController willMoveToParentViewController:nil];
        [self.selectedViewController.view removeFromSuperview];
        [self.selectedViewController removeFromParentViewController];
    }
    
    _selectedIndex = selectedIndex;
    
    self.selectedViewController = self.viewControllers[selectedIndex];
    [self addChildViewController:self.selectedViewController];
    self.selectedViewController.view.frame = self.contentView.bounds;
    [self.contentView addSubview:self.selectedViewController.view];
    [self.selectedViewController didMoveToParentViewController:self];
    
    //  child viewcontroller status bar可能需要update
    [self setNeedsStatusBarAppearanceUpdate];
}

- (void)setViewControllers:(NSArray *)viewControllers {
    
    if ([_viewControllers count]) {
        for (UIViewController *viewController in _viewControllers) {
            [viewController willMoveToParentViewController:nil];
            [viewController.view removeFromSuperview];
            [viewController removeFromParentViewController];
        }
    }
}

#pragma mark - Getter

- (UIView *)contentView {
    if (!_contentView) {
        _contentView = [[UIView alloc] init];
        _contentView.backgroundColor = [UIColor whiteColor];
        _contentView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    }
    return _contentView;
}

- (FRTabBar *)tabBar
{
    if (!_tabBar) {
        _tabBar = [[FRTabBar alloc] init];
        _tabBar.backgroundColor = [UIColor whiteColor];
        _tabBar.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleLeftMargin |UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleRightMargin;
    }
    return _tabBar;
}

@end
