//
//  ViewController.m
//  V2EX_25K
//
//  Created by coldmn3 on 16/8/31.
//  Copyright © 2016年 From Scratch. All rights reserved.
//

#import "ViewController.h"

#import "UIColor+FRExtend.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *urlString = @"https://www.v2ex.com/api/topics/show.json?id=1";
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:urlString]];
    
    NSURLSession *session = [NSURLSession sharedSession];
    
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSString *dataStr=[[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"%@",dataStr);
    }];
    
    [dataTask resume];
    
    UIView *vv = [[UIView alloc] initWithFrame:CGRectMake(0, 100, 200, 200)];
    vv.backgroundColor = [UIColor randomColor];

    [self.view addSubview:vv];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
