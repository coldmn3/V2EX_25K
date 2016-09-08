//
//  Person.h
//  V2EX_25K
//
//  Created by coldmn3 on 16/9/6.
//  Copyright © 2016年 From Scratch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic) NSString *name;

@property (nonatomic, assign) NSInteger salary;

- (void)eat;

@property (nonatomic, assign, getter=isHaha) BOOL haha;

@end
