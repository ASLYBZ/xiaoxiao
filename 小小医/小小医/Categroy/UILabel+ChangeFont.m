//
//  UILabel+ChangeFont.m
//  DFRomwe
//
//  Created by 王卫亮 on 16/7/13.
//  Copyright © 2016年 heyan. All rights reserved.
//

#import "UILabel+ChangeFont.h"
#import "SwizzlingExchange.h"
#import "CommonDefine.h"

#define kLableFont @"Snell Roundhand"  // 测试字体，容易看出来有没有全改掉

@implementation UILabel (ChangeFont)

+(void)load {
    //只执行一次这个方法
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        swizzling_exchangeMethod([self class], @selector(init), @selector(myInit));
        swizzling_exchangeMethod([self class], @selector(initWithFrame:), @selector(myInitWithFrame:));
        swizzling_exchangeMethod([self class], @selector(awakeFromNib), @selector(myAwakeFromNib));
    });
}

- (instancetype)myInit {
    id __self = [self myInit];
    UIFont * font = Font_NormalWithSize(self.font.pointSize);
    if (font) {
        self.font = font;
    }
    return __self;
}

- (instancetype)myInitWithFrame:(CGRect)rect {
    id __self = [self myInitWithFrame: rect];
    UIFont * font = Font_NormalWithSize(self.font.pointSize);
    if (font) {
        self.font = font;
    }
    return __self;
}

- (void)myAwakeFromNib {
    [self myAwakeFromNib];
    UIFont * font = Font_NormalWithSize(self.font.pointSize);
    if (font) {
        self.font = font;
    }
}


@end
