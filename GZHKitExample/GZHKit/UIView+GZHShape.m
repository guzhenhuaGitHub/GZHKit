//
//  UIView+GZHShape.m
//  GZHKit
//
//  Created by 顾振华 on 2017/5/2.
//  Copyright © 2017年 顾振华. All rights reserved.
//

#import "UIView+GZHShape.h"
#import "GZHKit.h"

@implementation UIView (GZHCircular)

- (CGFloat)gzh_radius
{
    return MIN(self.gzh_width, self.gzh_height) / 2;
}

- (void)gzh_circular
{
    [[self layer] setCornerRadius:[self gzh_radius]];
}

@end
