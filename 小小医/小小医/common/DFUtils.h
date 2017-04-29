//
//  AppDelegate.h
//  小小医
//
//  Created by 王卫亮 on 2017/4/25.
//  Copyright © 2017年 王卫亮. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DFUtils : NSObject

#pragma mark - Dictionary
//获取Dictionary中的元素,主要防止服务器发送@""或者obje-c转化成NSNull
+ (id)getElementForKey:(id)key fromDict:(NSDictionary *)dict;
//按照数据类型获取Dictionary中的元素,主要防止服务器发送@""或者obje-c转化成NSNull
+ (id)getElementForKey:(id)key fromDict:(NSDictionary *)dict forClass:(Class)forClass;

@end
