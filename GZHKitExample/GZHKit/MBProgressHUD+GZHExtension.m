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

+ (void)gzh_showMessage:(NSString *)message atView:(UIView *)aView {
    [self gzh_showMessage:message imageNamed:nil atView:aView];
}

+ (void)gzh_showMessage:(NSString *)message imageNamed:(NSString *)imageName atView:(UIView *)aView
{
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:aView animated:YES];
    // 显示提示信息
    hud.label.text = message;
    if ( ! [imageName isEmpty]) {
        // 设置图片
        hud.customView = [UIImageView viewWithImageNamed:imageName];
        // 设置模式
        hud.mode = MBProgressHUDModeCustomView;
    } else {
        // 设置模式
        hud.mode = MBProgressHUDModeText;
    }
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    // 1秒之后再消失
    [hud hideAnimated:YES afterDelay:1.0f];
}

@end
