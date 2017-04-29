//
//  UIView+MyAnimation.m
//  DFRomwe
//
//  Created by 王卫亮 on 15/12/31.
//  Copyright © 2015年 heyan. All rights reserved.
//

#import "UIView+MyAnimation.h"


@implementation UIView (MyAnimation)
-(void)transitionWithType:(NSString *)type WithSubtype:(NSString *)subtype AndDuration:(int)duration ForView:(UIView *)view{
    CATransition *animation = [CATransition animation];
    animation.duration = duration;
    animation.type = type;
    if (subtype != nil) {
        animation.subtype = subtype;
    }
    animation.timingFunction = UIViewAnimationOptionCurveEaseInOut;
    [view.layer addAnimation:animation forKey:@"animation"];
}

-(void)transitionWithDuration:(int)duration ForView:(UIView *)view{
    CATransition *animation = [CATransition animation];
    animation.duration = duration;
    animation.type = kCATransitionFade;
    animation.subtype = kCATransitionFromLeft;
    animation.timingFunction = UIViewAnimationOptionCurveEaseInOut;
    [view.layer addAnimation:animation forKey:@"animation"];
}

@end
