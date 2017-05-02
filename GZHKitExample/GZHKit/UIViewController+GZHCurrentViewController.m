//
//  UIViewController+GZHCurrentViewController.m
//  GZHKitExample
//
//  Created by 顾振华 on 2017/5/2.
//  Copyright © 2017年 顾振华. All rights reserved.
//

#import "UIViewController+GZHCurrentViewController.h"

@implementation UIViewController (GZHCurrentViewController)

+ (__kindof UIViewController *)currentViewController {
    return [[[[UIApplication sharedApplication] keyWindow] rootViewController] currentViewController];
}

- (__kindof UIViewController *)currentViewController {
    if (self.presentedViewController) return self.presentedViewController;
    else return self;
}

@end

@implementation UITabBarController (GZHCurrentViewController)

- (__kindof UIViewController *)currentViewController {
    return self.selectedViewController;
}

@end

@implementation UINavigationController (GZHCurrentViewController)

- (__kindof UIViewController *)currentViewController {
    return self.visibleViewController;
}

@end
