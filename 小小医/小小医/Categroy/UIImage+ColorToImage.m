//
//  UIImage+ColorToImage.m
//  DFRomwe
//
//  Created by xyxziMac on 15/12/10.
//  Copyright © 2015年 heyan. All rights reserved.
//

#import "UIImage+ColorToImage.h"

@implementation UIImage (ColorToImage)

+(UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
