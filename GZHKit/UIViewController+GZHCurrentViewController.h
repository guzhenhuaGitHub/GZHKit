//
//  UIViewController+GZHCurrentViewController.h
//  GZHKitExample
//
//  Created by 顾振华 on 2017/5/2.
//  Copyright © 2017年 顾振华. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (GZHCurrentViewController)

+ (__kindof UIViewController *)currentViewController;
- (__kindof UIViewController *)currentViewController;

@end

@interface UITabBarController (GZHCurrentViewController)

- (__kindof UIViewController *)currentViewController;

@end

@interface UINavigationController (GZHCurrentViewController)

- (__kindof UIViewController *)currentViewController;

@end
