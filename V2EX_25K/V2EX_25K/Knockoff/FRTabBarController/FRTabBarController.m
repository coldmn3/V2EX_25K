//
//  FRTabBarController.m
//  V2EX_25K
//
//  Created by coldmn3 on 16/9/4.
//  Copyright © 2016年 From Scratch. All rights reserved.
//

#import "FRTabBarController.h"

#import "FRTabBar.h"
#import "UIColor+FRExtend.h"

static const NSUInteger kDefaultTabBarHeight = 49;

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
    
    [self setTabBarHidden:self.isTabBarHidden animated:NO];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    [self setTabBarHidden:self.isTabBarHidden animated:NO];
}

#pragma mark - Logics

- (void)setTabBarHidden:(BOOL)hidden animated:(BOOL)animated {
    _tabBarHidden = hidden;
    
    __weak __typeof(self) weakSelf = self;
    
    void (^animations)() = ^{
        CGSize viewSize = weakSelf.view.frame.size;
        CGFloat contentViewHeight = viewSize.height;
        CGFloat tabBarStartingY = viewSize.height;
        CGFloat tabBarHeight = CGRectGetHeight(self.tabBar.frame);
        
        if (tabBarHeight <= 0) {
            tabBarHeight = kDefaultTabBarHeight;
        }
        
        if (!weakSelf.isTabBarHidden) {
            tabBarStartingY = viewSize.height - tabBarHeight;
            weakSelf.tabBar.hidden = NO;
        }
        
        [self.contentView setFrame:CGRectMake(0, 0, viewSize.width, contentViewHeight)];
        [self.tabBar setFrame:CGRectMake(0, tabBarStartingY, viewSize.width, tabBarHeight)];
    };
    
    void (^completion)(BOOL) = ^(BOOL finished){
        if (weakSelf.isTabBarHidden) {
            weakSelf.tabBar.hidden = NO;
        }
    };
    
    if (animated) {
        [UIView animateWithDuration:0.25 animations:animations completion:completion];
    }
    else {
        animations();
        completion(YES);
    }
}

#pragma mark - Setter

- (void)setTabBarHidden:(BOOL)tabBarHidden {
    [self setTabBarHidden:tabBarHidden animated:NO];
}

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

- (FRTabBar *)tabBar {
    if (!_tabBar) {
        _tabBar = [[FRTabBar alloc] init];
        _tabBar.backgroundColor = [UIColor randomColor];
        _tabBar.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleLeftMargin |UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleRightMargin;
    }
    return _tabBar;
}

@end
