//
//  UIApplication+GZHExtension.h
//  GZHKitExample
//
//  Created by 顾振华 on 2017/5/2.
//  Copyright © 2017年 顾振华. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIApplication (GZHExtension)

+ (UIWindow *)keyWindow;
// 最上面的window
+ (UIWindow *)topWindow;

@end
