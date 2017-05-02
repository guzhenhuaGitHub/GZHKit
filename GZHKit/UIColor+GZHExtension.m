//
//  UIColor+GZHExtension.m
//  ObjectiveC
//
//  Created by 顾振华 on 15/9/6.
//  Copyright © 2015年 顾振华. All rights reserved.
//

#import "UIColor+GZHExtension.h"

@implementation UIColor (GZHColor)
+ (instancetype)gzh_random {
    return [UIColor colorWithRed:(arc4random()%255)/255.0 green:(arc4random()%255)/255.0 blue:(arc4random()%255)/255.0 alpha:1];
}
@end
