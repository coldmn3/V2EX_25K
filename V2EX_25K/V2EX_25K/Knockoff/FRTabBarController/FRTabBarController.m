//
//  FRTabBarController.m
//  V2EX_25K
//
//  Created by coldmn3 on 16/9/4.
//  Copyright © 2016年 From Scratch. All rights reserved.
//

#import "FRTabBarController.h"

@interface FRTabBarController ()

@property (nonatomic, strong) UIView *contentView;

@end

@implementation FRTabBarController

#pragma mark - LifeCycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.contentView];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    
}

#pragma mark - Setter

- (void)setSelectedIndex:(NSUInteger)selectedIndex {
    NSAssert(selectedIndex >= [self.viewControllers count], @"viewController index out of bounds");
}

#pragma mark - Getter

- (UIView *)contentView
{
    if (!_contentView) {
        _contentView = [[UIView alloc] init];
        _contentView.backgroundColor = [UIColor whiteColor];
        _contentView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    }
    return _contentView;
}

@end
