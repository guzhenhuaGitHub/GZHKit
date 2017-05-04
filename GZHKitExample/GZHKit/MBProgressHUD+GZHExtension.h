//
//  MBProgressHUD+GZHExtension.h
//  GZHKitExample
//
//  Created by 顾振华 on 2017/5/2.
//  Copyright © 2017年 顾振华. All rights reserved.
//

#import <MBProgressHUD/MBProgressHUD.h>

@interface MBProgressHUD (GZHExtension)

+ (void)gzh_showMessage:(NSString *)message;
+ (void)gzh_showMessage:(NSString *)message atView:(UIView *)aView;

@end
