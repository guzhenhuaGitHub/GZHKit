//
//  UIView+GZHFrame.m
//  GZHKitExample
//
//  Created by 顾振华 on 2017/5/8.
//  Copyright © 2017年 顾振华. All rights reserved.
//

#import "UIView+GZHFrame.h"

@implementation UIView (GZHFrame)

- (CGSize)gzh_size
{
    return self.frame.size;
}

- (void)setGzh_size:(CGSize)gzh_size
{
    CGRect frame = self.frame;
    frame.size = gzh_size;
    self.frame = frame;
}

- (CGFloat)gzh_width
{
    return self.frame.size.width;
}

- (void)setGzh_width:(CGFloat)gzh_width
{
    CGRect frame = self.frame;
    frame.size.width = gzh_width;
    self.frame = frame;
}

- (CGFloat)gzh_height
{
    return self.frame.size.height;
}

- (void)setGzh_height:(CGFloat)gzh_height
{
    CGRect frame = self.frame;
    frame.size.height = gzh_height;
    self.frame = frame;
}

- (CGFloat)gzh_x
{
    return self.frame.origin.x;
}

- (void)setGzh_x:(CGFloat)gzh_x
{
    CGRect frame = self.frame;
    frame.origin.x = gzh_x;
    self.frame = frame;
}

- (CGFloat)gzh_y
{
    return self.frame.origin.y;
}

- (void)setGzh_y:(CGFloat)gzh_y
{
    CGRect frame = self.frame;
    frame.origin.y = gzh_y;
    self.frame = frame;
}

- (CGFloat)gzh_centerX
{
    return self.center.x;
}

- (void)setGzh_centerX:(CGFloat)gzh_centerX
{
    CGPoint center = self.center;
    center.x = gzh_centerX;
    self.center = center;
}

- (CGFloat)gzh_centerY
{
    return self.center.y;
}

- (void)setGzh_centerY:(CGFloat)gzh_centerY
{
    CGPoint center = self.center;
    center.y = gzh_centerY;
    self.center = center;
}

- (CGFloat)gzh_left
{
    return self.gzh_x;
}

- (void)setGzh_left:(CGFloat)gzh_left
{
    self.gzh_x = gzh_left;
}

- (CGFloat)gzh_right
{
    return CGRectGetMaxX(self.frame);
}

- (void)setGzh_right:(CGFloat)gzh_right
{
    self.gzh_x = gzh_right - self.gzh_width;
}

- (CGFloat)gzh_top
{
    return self.gzh_y;
}

- (void)setGzh_top:(CGFloat)gzh_top
{
    self.gzh_y = gzh_top;
}

- (CGFloat)gzh_bottom
{
    //    return self.gzh_y + self.gzh_height;
    return CGRectGetMaxY(self.frame);
}

- (void)setGzh_bottom:(CGFloat)gzh_bottom
{
    self.gzh_y = gzh_bottom - self.gzh_height;
}

@end
