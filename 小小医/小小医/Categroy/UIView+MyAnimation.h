//
//  UIView+MyAnimation.h
//  DFRomwe
//
//  Created by 王卫亮 on 15/12/31.
//  Copyright © 2015年 heyan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface UIView (MyAnimation)
- (void)transitionWithType:(NSString *)type WithSubtype:(NSString *) subtype AndDuration:(int)duration ForView:(UIView *)view;
- (void)transitionWithDuration:(int)duration ForView:(UIView *)view;//渐变

@end
