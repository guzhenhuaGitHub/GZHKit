//
//  UIImageView+GZHExtension.m
//  GZHKitExample
//
//  Created by 顾振华 on 2017/5/2.
//  Copyright © 2017年 顾振华. All rights reserved.
//

#import "UIImageView+GZHExtension.h"
#import <UIImageView+WebCache.h>
#import "GZHKit.h"

@implementation UIImageView (GZHExtension)

+ (instancetype)viewWithImageNamed:(NSString *)imageName {
    return [[UIImageView alloc] initWithImage:[UIImage imageNamed:imageName]];
}

- (void)setImageWithURL:(NSString *)url placeholderImageNamed:(NSString *)placeholderImageName
{
    weakSelf;
    UIImage *placeholder = [UIImage imageNamed:@"defaultUserIcon"];
    [self sd_setImageWithURL:[NSURL URLWithString:url] placeholderImage:placeholder completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL)
    {
        if (image == nil) return;
        weakself.image = image;
    }];
}

@end
