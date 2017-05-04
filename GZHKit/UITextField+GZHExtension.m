//
//  UITextField+GZHExtension.m
//  GZHKitExample
//
//  Created by 顾振华 on 2017/5/2.
//  Copyright © 2017年 顾振华. All rights reserved.
//

#import "UITextField+GZHExtension.h"

static NSString * const GZHPlaceholderColorKey = @"placeholderLabel.textColor";

@implementation UITextField (GZHExtension)

- (void)setGzh_placeholderColor:(UIColor *)gzh_placeholderColor
{
    // 提前设置占位文字, 目的 : 让它提前创建placeholderLabel
    NSString *oldPlaceholder = self.placeholder;
    self.placeholder = @" ";
    self.placeholder = oldPlaceholder;
    // 恢复到默认的占位文字颜色
    if (gzh_placeholderColor == nil) {
        gzh_placeholderColor = [UIColor colorWithRed:0 green:0 blue:0.0980392 alpha:0.22];
    }
    // 设置占位文字颜色
    [self setValue:gzh_placeholderColor forKeyPath:GZHPlaceholderColorKey];
}

- (UIColor *)gzh_placeholderColor
{
    return [self valueForKeyPath:GZHPlaceholderColorKey];
}

@end
