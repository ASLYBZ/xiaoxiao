//
//  NSString+Extend.m
//  DFRomwe
//
//  Created by 王卫亮 on 16/4/28.
//  Copyright © 2016年 heyan. All rights reserved.
//

#import "NSString+Extend.h"

@implementation NSString (Extend)


//判断是否是数字
+ (BOOL)validateNumber:(NSString*)string {
    BOOL res = YES;
    NSCharacterSet* tmpSet = [NSCharacterSet characterSetWithCharactersInString:@"0123456789"];
    NSRange range = [string rangeOfCharacterFromSet:tmpSet];
    if (range.length == 0) {
        res = NO;
    }
    return res;
}


//去两端空格和换行

//取去全部空格和换行
+ (NSString *)removeSpaceAndEnter:(NSString *)str {
    NSString *temp = [str stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp = [temp stringByReplacingOccurrencesOfString:@"\r" withString:@""];
    temp = [temp stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    return temp;
}

// 手机系统语言
+ (NSString*)getPreferredLanguage {
    NSUserDefaults* defs = [NSUserDefaults standardUserDefaults];
    NSArray* languages = [defs objectForKey:@"AppleLanguages"];
    NSString* preferredLang = [languages objectAtIndex:0];
    return preferredLang;
}

@end
