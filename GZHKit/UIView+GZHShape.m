//
//  UIView+GZHShape.m
//  GZHKitExample
//
//  Created by 顾振华 on 2017/5/8.
//  Copyright © 2017年 顾振华. All rights reserved.
//

#import "UIView+GZHShape.h"
#import "GZHKit.h"

@implementation UIView (GZHShape)

- (CGFloat)radius {
    return MIN(self.gzh_width, self.gzh_height) / 2;
}

- (void)circular {
    self.layer.cornerRadius = self.radius;
    self.layer.masksToBounds = YES;
}

@end
