//
//  FRPropertyType.h
//  V2EX_25K
//
//  Created by coldmn3 on 16/9/7.
//  Copyright © 2016年 From Scratch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FRPropertyType : NSObject

@property (nonatomic, readonly, assign, getter=isIdType) BOOL idType;

@property (nonatomic, readonly, assign, getter=isNumberType) BOOL numberType;

@property (nonatomic, readonly, assign, getter=isBoolType) BOOL boolType;

@property (nonatomic, readonly, assign) Class classType;

+ (instancetype)propertyTypeWithAttributesString:(NSString *)string;

- (instancetype)initWithTypeString:(NSString *)string;

@end
