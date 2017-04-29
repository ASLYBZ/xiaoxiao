//
//  AppDelegate.h
//  小小医
//
//  Created by 王卫亮 on 2017/4/25.
//  Copyright © 2017年 王卫亮. All rights reserved.
//

#ifndef CommonDefine_h
#define CommonDefine_h


#endif /* CommonDefine_h */

//远程环境
#define Servivce_Request_Address_encrypt  @"https://ios.romwe.com/index.php?"
#define Servivce_Request_Address @"http://ios.romwe.com/index.php?"







//字典解析
#define PUGetElemForKeyFromDict(__key, __dict)   [DFUtils getElementForKey:__key fromDict:__dict]
#define PUGetObjFromDict(__key, __dict, __class) [DFUtils getElementForKey:__key fromDict:__dict forClass:__class]
//转字符串
#define GETTOStrinng(__key) [NSString stringWithFormat:@"%@",__key]



//UI 动态布局
#define GetWindowsFrame [UIScreen mainScreen].bounds
#define GetWindowsFrameWidth [UIScreen mainScreen].bounds.size.width
#define GetWindowsFrameHeight [UIScreen mainScreen].bounds.size.height

#define GetStotyboard(__name)  [UIStoryboard storyboardWithName:__name bundle:nil]

#define GetWindows [[[UIApplication sharedApplication] delegate] window]

#define BOOKMARK_BACK_BTN_FRAME CGRectMake(0, 20, 20, 20)  //返回按钮大小


//debug 打印宏
#ifdef DEBUG
#define DebugLog(log, ...) NSLog((@"%s [Line %d]: " log), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
#define DebugLog(log, ...)
#endif



//设备系统
#define MYDevice_SystemVersion [[UIDevice currentDevice].systemVersion floatValue]

//运算安全变量
#define MSSalfParam(__value) [NSString stringWithFormat:@"%@",__value?__value:@""]


#define MyDarkGrayColor [UIColor colorWithRed:0.4 green:0.4 blue:0.4 alpha:1]
#define MyLightGrayColor [UIColor colorWithRed:0.62 green:0.62 blue:0.62 alpha:1]
#define MyLineGrayColor [UIColor colorWithRed:0.62 green:0.62 blue:0.62 alpha:1]
#define MyRedColor [UIColor colorWithRed:0.89 green:0.89 blue:0.89 alpha:1]

#define kBorderColor [UIColor colorWithRed:217/255.0 green:217/255.0 blue:217/255.0 alpha:1]
#define kRomweRedColor [UIColor colorWithRed:255/255.0 green:105/255.0 blue:110/255.0 alpha:1]
#define kDefaultBordColor [UIColor colorWithRed:229/255.0 green:229/255.0 blue:229/255.0 alpha:1].CGColor
#define kDefaultCCCCCColor [UIColor colorWithRed:204/255.0 green:204/255.0 blue:204/255.0 alpha:1]
#define KDefault666666Color [UIColor colorWithRed:0.4 green:0.4 blue:0.4 alpha:1]

#define kBeginRed [UIColor colorWithRed:255/255.0 green:189/255.0 blue:189/255.0 alpha:1]
#define kEndRed [UIColor colorWithRed:255/255.0 green:105/255.0 blue:110/255.0 alpha:1]

#define KGrayWhite [UIColor colorWithRed:245/255.0 green:245/255.0 blue:245/255.0 alpha:1]


#define Product_PageSize        @"20"


/** 字体 */
#define Font_NormalWithSize(x) [UIFont systemFontOfSize:x]         // 正常字体
#define Font_BoldWithSize(x) [UIFont boldSystemFontOfSize:x]       // 粗体
#define Font_ItalicWithSize(x) [UIFont italicSystemFontOfSize:x]   // 斜体

#define Font_Default [UIFont systemFontOfSize:14.0]                // 默认字体大小14


/** 新规则颜色 */
#define Color_White [UIColor whiteColor]                                                  // 白色
#define Color_Theme [UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1]  // 主题色
#define Color_AlertBack [kColor333333 colorWithAlphaComponent:0.3]                        // 弹框蒙版颜色




#define kColor333333 [UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1]  // 主黑色
#define kColor9B9B9B [UIColor colorWithRed:155/255.0 green:155/255.0 blue:155/255.0 alpha:1]  // 副黑色
#define kColorF5F5F5 [UIColor colorWithRed:245/255.0 green:245/255.0 blue:245/255.0 alpha:1]  // 背景色
#define kColorFF696E [UIColor colorWithRed:255/255.0 green:105/255.0 blue:110/255.0 alpha:1]  // 主红色
#define kColorA1E8B1 [UIColor colorWithRed:116/255.0 green:232/255.0 blue:177/255.0 alpha:1]  // 绿色

#define kColorFFF4F2 [UIColor colorWithRed:255/255.0 green:244/255.0 blue:242/255.0 alpha:1]  // 背景 红色


#define Border_Radius 4



