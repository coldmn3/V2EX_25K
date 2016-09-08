//
//  FRPropertyType.m
//  V2EX_25K
//
//  Created by coldmn3 on 16/9/7.
//  Copyright © 2016年 From Scratch. All rights reserved.
//

#import "FRPropertyType.h"

@implementation FRPropertyType

+ (instancetype)propertyTypeWithAttributesString:(NSString *)string {
    return [[FRPropertyType alloc] initWithTypeString:string];
}

- (instancetype)initWithTypeString:(NSString *)string
{
    self = [super init];
    if (self) {
        NSUInteger loc = 1;
        NSUInteger len = [string rangeOfString:@","].location - loc;
        NSString *type = [string substringWithRange:NSMakeRange(loc, len)];
        
        NSLog(@"%@",type);
    }
    return self;
}

@end
