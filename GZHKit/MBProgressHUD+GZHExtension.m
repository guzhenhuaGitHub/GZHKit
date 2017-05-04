//
//  MBProgressHUD+GZHExtension.m
//  GZHKitExample
//
//  Created by 顾振华 on 2017/5/2.
//  Copyright © 2017年 顾振华. All rights reserved.
//

#import "MBProgressHUD+GZHExtension.h"
#import "GZHKit.h"

@implementation MBProgressHUD (GZHExtension)

+ (void)gzh_showMessage:(NSString *)message {
    [self gzh_showMessage:message atView:[UIApplication sharedApplication].windows.lastObject];
}

+ (void)gzh_showMessage:(NSString *)message atView:(UIView *)aView
{
    [self gzh_showMessage:message imageNamed:nil atView:aView];
}

+ (void)gzh_showMessage:(NSString *)message imageNamed:(NSString *)imageName {
    [self gzh_showMessage:message imageNamed:imageName atView:[UIApplication sharedApplication].windows.lastObject];
}

+ (void)gzh_showMessage:(NSString *)message imageNamed:(NSString *)imageName atView:(UIView *)aView
{
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:aView animated:YES];
    hud.label.text = message;
    // 快速显示一个提示信息
    hud.label.text = message;
    // 判断是否有图片
    if ([imageName isEmpty]) {
        // 设置模式
        hud.mode = MBProgressHUDModeText;
    } else {
        // 设置图片
        hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:imageName]];
        // 设置模式
        hud.mode = MBProgressHUDModeCustomView;
    }
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    // 1秒之后再消失
    [hud hideAnimated:YES afterDelay:1.0f];
}

@end
