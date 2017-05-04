//
//  UIApplication+GZHExtension.m
//  GZHKitExample
//
//  Created by 顾振华 on 2017/5/2.
//  Copyright © 2017年 顾振华. All rights reserved.
//

#import "UIApplication+GZHExtension.h"

@implementation UIApplication (GZHExtension)

+ (UIWindow *)keyWindow {
    return [UIApplication sharedApplication].keyWindow;
}

@end
