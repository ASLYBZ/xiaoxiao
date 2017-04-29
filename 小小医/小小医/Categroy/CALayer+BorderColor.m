//
//  CALayer+BorderColor.m
//  DFRomwe
//
//  Created by 王卫亮 on 15/12/26.
//  Copyright © 2015年 heyan. All rights reserved.
//

#import "CALayer+BorderColor.h"
#import <UIKit/UIKit.h>

@implementation CALayer (BorderColor)
- (void)setBorderColorFromUIColor:(UIColor *)color{
    self.borderColor = color.CGColor;
}
@end
