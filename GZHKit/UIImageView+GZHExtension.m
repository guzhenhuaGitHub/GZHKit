//
//  UIImageView+GZHExtension.m
//  GZHKitExample
//
//  Created by 顾振华 on 2017/5/2.
//  Copyright © 2017年 顾振华. All rights reserved.
//

#import "UIImageView+GZHExtension.h"
#import "UIImageView+WebCache.h"
#import "GZHKit.h"

@implementation UIImageView (GZHExtension)

- (void)setImageWithURL:(NSString *)url placeholderImageNamed:(NSString *)placeholderImageName
{
    weakSelf;
    [self sd_setImageWithURL:[NSURL URLWithString:url]
            placeholderImage:[UIImage imageNamed:placeholderImageName]
                   completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL)
    {
        if (image == nil) return;
        weakself.image = image;
    }];
}

@end
