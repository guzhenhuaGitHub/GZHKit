//
//  UIView+GZHFrame.h
//  GZHKitExample
//
//  Created by 顾振华 on 2017/5/8.
//  Copyright © 2017年 顾振华. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (GZHFrame)

@property (nonatomic, assign) CGSize gzh_size;
@property (nonatomic, assign) CGFloat gzh_width;
@property (nonatomic, assign) CGFloat gzh_height;
@property (nonatomic, assign) CGFloat gzh_x;
@property (nonatomic, assign) CGFloat gzh_y;
@property (nonatomic, assign) CGFloat gzh_centerX;
@property (nonatomic, assign) CGFloat gzh_centerY;

@property (nonatomic, assign) CGFloat gzh_left;
@property (nonatomic, assign) CGFloat gzh_right;
@property (nonatomic, assign) CGFloat gzh_top;
@property (nonatomic, assign) CGFloat gzh_bottom;

@end
