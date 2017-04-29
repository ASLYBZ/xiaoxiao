//
//  NSString+date.h
//  SheInSide
//
//  Created by xyxziMac on 14-7-17.
//  Copyright (c) 2014年 DotFashion. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (date)
+(NSString*)myFormarTime :(NSString*) string;



//my Order页面时间
+(NSString*)myOrderTime :(NSString*) string;

//预售时间
+(NSString*)myPresaleFormarTime :(NSString*)string endString:(NSString*)endString;

//返回时间差数组
+(NSString*)myCountTime:(NSString*)startString endString:(NSString*)endString;


@end
