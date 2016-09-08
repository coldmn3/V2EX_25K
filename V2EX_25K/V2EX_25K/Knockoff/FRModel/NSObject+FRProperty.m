//
//  NSObject+FRProperty.m
//  V2EX_25K
//
//  Created by coldmn3 on 16/9/6.
//  Copyright © 2016年 From Scratch. All rights reserved.
//

#import "NSObject+FRProperty.h"

#import <objc/runtime.h>
#import "FRProperty.h"

@implementation NSObject (FRProperty)

+ (NSArray *)fr_properties
{
    unsigned int outCount = 0;
    Class cls = [self class];
    objc_property_t *properties = class_copyPropertyList(cls, &outCount);
    
    for (int i = 0; i < outCount; i++) {
        objc_property_t property = properties[i];
        NSString *name = @(property_getName(property));
//        FRProperty *propertyObject = 
        NSString *attributeString = @(property_getAttributes(property));
        NSLog(@"%@ -> %@", name, attributeString);
    }
    return nil;
}

@end
