//
//  FRProperty.h
//  V2EX_25K
//
//  Created by coldmn3 on 16/9/7.
//  Copyright © 2016年 From Scratch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FRPropertyType.h"
#import <objc/runtime.h>

@interface FRProperty : NSObject

@property (nonatomic, strong) NSString *name;

@property (nonatomic, strong) FRPropertyType *type;

+ (FRProperty *)propertyObjectWithProperty:(objc_property_t)property;

- (instancetype)initWithProperty:(objc_property_t)property;

@end
