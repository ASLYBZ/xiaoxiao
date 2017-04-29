//
//  NSString+date.m
//  SheInSide
//
//  Created by xyxziMac on 14-7-17.
//  Copyright (c) 2014年 DotFashion. All rights reserved.
//

#import "NSString+date.h"

//#define
@implementation NSString (date)
+(NSString*)myFormarTime :(NSString*) string
{
    if (string)
    {
        //时间戳转成时间
        NSTimeInterval timeInterval = [string intValue];
        return [self mySettingFormatTime:timeInterval];
    }
    return nil;
}

+ (NSString*)mySettingFormatTime:(NSTimeInterval)timerInterval{
    NSDate *date2 = [NSDate dateWithTimeIntervalSince1970:timerInterval];
    NSDateFormatter *date=[[NSDateFormatter alloc] init];
    
    
  
        [date setDateFormat:@"yyyy-MM-dd"];
    
    NSString *d=[date stringFromDate:date2];
    return d;
}
//my Order页面时间
+(NSString*)myOrderTime :(NSString*) string
{
    return [self myFormarTime:string];
}

//预售时间
+(NSString*)myPresaleFormarTime :(NSString*)string endString:(NSString*)endString
{
    NSString *startTimeString = [NSString myFormarTime:string];
    NSString *endTimeString = [NSString myFormarTime:endString];
    NSString *presaleString = [NSString stringWithFormat:@"%@-%@",startTimeString,endTimeString];
    return presaleString;
}


+ (NSString*)myString:(NSInteger)interger
{
    NSString *string = [NSString stringWithFormat:@"%d",(int)interger];
    return string;
}
+ (NSString*)myCountTime:(NSString*)startString endString:(NSString*)endString
{
    NSTimeInterval StartInterval = [[NSDate date] timeIntervalSince1970];
    NSTimeInterval endInterval = [endString intValue];

    NSDate *date1 = [NSDate dateWithTimeIntervalSince1970:StartInterval];
    NSDate *date2 = [NSDate dateWithTimeIntervalSince1970:endInterval];
    
    NSTimeInterval timeInterval = [date2 timeIntervalSinceDate:date1];  //这个是相隔的秒数，除以3600就是小时数，再除以24就是天数
    int dataInt = timeInterval/3600/24;
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSUInteger unitFlags = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    NSDateComponents *dateComponent = [calendar components:unitFlags fromDate:date1 toDate:date2 options:0];

//    NSString *yearString = [NSString myString:[dateComponent year]];
//    NSString *monthString = [NSString myString:[dateComponent month]];
//    NSString *dayString = [NSString myString:[dateComponent day]];
    NSString *hourString = [NSString myString:[dateComponent hour]];
    NSString *minuteString = [NSString myString:[dateComponent minute]];
    NSString *secondString = [NSString myString:[dateComponent second]];
    
    NSString *string = [NSString stringWithFormat:@"%d,%@,%@,%@",dataInt,hourString,minuteString,secondString];
    
    return string;
    
}



@end
