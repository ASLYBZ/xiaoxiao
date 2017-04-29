//
//  SwizzlingExchange.h
//  DFRomwe
//
//  Created by 王卫亮 on 16/7/13.
//  Copyright © 2016年 heyan. All rights reserved.
//

#ifndef SwizzlingExchange_h
#define SwizzlingExchange_h
#import <objc/runtime.h>

static inline void swizzling_exchangeMethod(Class clazz, SEL originalSelector, SEL swizzledSelector) {
    Method originalMethod = class_getInstanceMethod(clazz, originalSelector);
    Method swizzledMethod = class_getInstanceMethod(clazz, swizzledSelector);
    
    BOOL success = class_addMethod(clazz, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
    
    if (success) {
        class_replaceMethod(clazz, swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
    } else {
        method_exchangeImplementations(originalMethod, swizzledMethod);
    }
}

#endif /* SwizzlingExchange_h */
