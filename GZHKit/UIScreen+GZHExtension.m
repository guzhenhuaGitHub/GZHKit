//
//  UIScreen+GZHExtension.m
//  GZHKitExample
//
//  Created by 顾振华 on 2017/5/2.
//  Copyright © 2017年 顾振华. All rights reserved.
//

#import "UIScreen+GZHExtension.h"

@implementation UIScreen (GZHExtension)

+ (CGFloat)gzh_width {
    return CGRectGetWidth([UIScreen mainScreen].bounds);
}

+ (CGFloat)gzh_height {
    return CGRectGetHeight([UIScreen mainScreen].bounds);
}

@end
