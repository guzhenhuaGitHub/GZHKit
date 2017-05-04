//
//  UIStoryboard+GZHStoryboard.h
//  GZHKitExample
//
//  Created by 顾振华 on 2017/5/2.
//  Copyright © 2017年 顾振华. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIStoryboard (GZHStoryboard)

+ (__kindof UIViewController *)storyboardNamed:(NSString *)storyboardName viewControllerWithIdentifier:(NSString *)identifier;

+ (__kindof UIViewController *)viewControllerInMainStoryboardWithIdenfitier:(NSString *)identifier;

+ (__kindof UIViewController *)initialViewControllerInStoryboardNamed:(NSString *)storyboardName;

@end
