//
//  UIView+GZHFrame.m
//  GZHKit
//
//  Created by 顾振华 on 2017/5/2.
//  Copyright © 2017年 顾振华. All rights reserved.
//

#import "UIView+GZHFrame.h"

@implementation UIView (GZHFrame)

#pragma mark size

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

#pragma mark x

- (CGFloat)gzh_x
{
    return CGRectGetMinX(self.frame);
}

- (void)setGzh_x:(CGFloat)gzh_x
{
    CGRect frame = self.frame;
    frame.origin.x = gzh_x;
    self.frame = frame;
}

#pragma mark y

- (CGFloat)gzh_y
{
    return CGRectGetMinY(self.frame);
}

- (void)setGzh_y:(CGFloat)gzh_y
{
    CGRect frame = self.frame;
    frame.origin.y = gzh_y;
    self.frame = frame;
}

#pragma mark width

- (CGFloat)gzh_width
{
    return CGRectGetWidth(self.frame);
}

- (void)setGzh_width:(CGFloat)gzh_width
{
    CGRect frame = self.frame;
    frame.size.width = gzh_width;
    self.frame = frame;
}

#pragma mark height

- (CGFloat)gzh_height
{
    return CGRectGetHeight(self.frame);
}

- (void)setGzh_height:(CGFloat)gzh_height
{
    CGRect frame = self.frame;
    frame.size.height = gzh_height;
    self.frame = frame;
}

#pragma mark center.x

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

#pragma mark center.y

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

#pragma mark center inside

- (CGPoint)gzh_centerInside
{
    return CGPointMake(CGRectGetMidX(self.bounds), CGRectGetMidY(self.bounds));
}

#pragma mark left

- (CGFloat)gzh_left
{
    return CGRectGetMinX(self.frame);
}

- (void)setGzh_left:(CGFloat)gzh_left
{
    self.gzh_x = gzh_left;
}

#pragma mark right

- (CGFloat)gzh_right
{
    //    return self.x + self.width;
    return CGRectGetMaxX(self.frame);
}

- (void)setGzh_right:(CGFloat)gzh_right
{
    self.gzh_x = gzh_right - self.gzh_width;
}

#pragma mark top

- (CGFloat)gzh_top
{
    return CGRectGetMinY(self.frame);
}

- (void)setGzh_top:(CGFloat)gzh_top
{
    self.gzh_y = gzh_top;
}

#pragma mark bottom

- (CGFloat)gzh_bottom
{
    //    return self.y + self.height;
    return CGRectGetMaxY(self.frame);
}

- (void)setGzh_bottom:(CGFloat)gzh_bottom
{
    self.gzh_y = gzh_bottom - self.gzh_height;
}

@end
