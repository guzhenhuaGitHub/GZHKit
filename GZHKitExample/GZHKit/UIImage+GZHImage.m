//
//  UIImage+GZHImage.m
//  宽创AR
//
//  Created by 顾振华 on 2017/1/17.
//  Copyright © 2017年 顾振华. All rights reserved.
//

#import "UIImage+GZHImage.h"

@implementation UIImage (GZHImage)

+ (instancetype)originalImageNamed:(NSString *)imageName
{
    return [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

+ (instancetype)imageWithColor:(UIColor *)color
{
    // 创建1个1x1的图片上下文
    CGRect rect=CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    // 获取图片上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    // 设置上下文填充颜色
    CGContextSetFillColorWithColor(context, [color CGColor]);
    // 在图片上下文中填充目标色
    CGContextFillRect(context, rect);
    // 取得渲染图片
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    // 关闭图片上下文
    UIGraphicsEndImageContext();
    
    return theImage;
}

@end
