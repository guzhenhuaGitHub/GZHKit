//
//  UIStoryboard+GZHStoryboard.m
//  GZHKitExample
//
//  Created by 顾振华 on 2017/5/2.
//  Copyright © 2017年 顾振华. All rights reserved.
//

#import "UIStoryboard+GZHStoryboard.h"

@implementation UIStoryboard (GZHStoryboard)

+ (UIViewController *)storyboardNamed:(NSString *)storyboardName viewControllerWithIdentifier:(NSString *)identifier {
    return [[UIStoryboard storyboardWithName:storyboardName bundle:nil] instantiateViewControllerWithIdentifier:identifier];
}

+ (UIViewController *)viewControllerInMainStoryboardWithIdenfitier:(NSString *)identifier {
    return [self storyboardNamed:@"main" viewControllerWithIdentifier:identifier];
}

+ (UIViewController *)initialViewControllerInStoryboardNamed:(NSString *)storyboardName {
    return [[UIStoryboard storyboardWithName:storyboardName bundle:nil] instantiateInitialViewController];
}



@end
