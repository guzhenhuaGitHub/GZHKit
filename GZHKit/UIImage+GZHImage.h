//
//  UIImage+GZHImage.h
//  宽创AR
//
//  Created by 顾振华 on 2017/1/17.
//  Copyright © 2017年 顾振华. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (GZHImage)
/**
 不渲染图片
 */
+ (instancetype)originalImageNamed:(NSString *)imageName;

+ (instancetype)imageWithColor:(UIColor *)color;

@end
