//
//  NSString+Extend.h
//  DFRomwe
//
//  Created by 王卫亮 on 16/4/28.
//  Copyright © 2016年 heyan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Extend)
+ (BOOL)validateNumber:(NSString*)string;
+ (NSString *)removeSpaceAndEnter:(NSString *)str;

/* 获取语言 */
+ (NSString*)getPreferredLanguage;

@end
