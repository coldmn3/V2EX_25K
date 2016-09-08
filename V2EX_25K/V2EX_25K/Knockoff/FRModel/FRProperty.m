//
//  FRProperty.m
//  V2EX_25K
//
//  Created by coldmn3 on 16/9/7.
//  Copyright © 2016年 From Scratch. All rights reserved.
//

#import "FRProperty.h"

@implementation FRProperty

+ (FRProperty *)propertyObjectWithProperty:(objc_property_t)property {
    return [[FRProperty alloc] initWithProperty:property];
}

- (instancetype)initWithProperty:(objc_property_t)property
{
    self = [super init];
    if (self) {
        _name = @(property_getName(property));
//        _type = 
    }
    return self;
}

@end
