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
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:aView animated:YES];
    hud.mode = MBProgressHUDModeText;
    hud.label.text = message;
    hud.removeFromSuperViewOnHide = YES;
    [hud hideAnimated:YES afterDelay:1.0f];
}

@end
