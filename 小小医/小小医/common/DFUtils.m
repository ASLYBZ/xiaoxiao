//
//  AppDelegate.h
//  小小医
//
//  Created by 王卫亮 on 2017/4/25.
//  Copyright © 2017年 王卫亮. All rights reserved.
//

#import "DFUtils.h"

@implementation DFUtils

#pragma mark - Dictionary

+ (id)getElementForKey:(id)key fromDict:(NSDictionary *)dict
{
    if(![dict isKindOfClass:[NSDictionary class]])
        return nil;
    
    id obj = [dict objectForKey:key];
    if ([obj isKindOfClass:[NSString class]] && [obj isEqual:@""])
    {
        return nil; //空字符串
    }
    else if ([obj isKindOfClass:[NSNull class]])
    {
        return nil; //空类
    }
    return obj;
}


+ (id)getElementForKey:(id)key fromDict:(NSDictionary *)dict forClass:(Class)forClass
{
    if(![dict isKindOfClass:[NSDictionary class]])
        return nil;
    
    id obj = [dict objectForKey:key];
    if ([obj isKindOfClass:forClass])
    {
        if ([obj isKindOfClass:[NSString class]] && [obj isEqual:@""])
        {
            return nil;
        }
        else
        {
            return obj;
        }
    }
    return nil;
}

@end
