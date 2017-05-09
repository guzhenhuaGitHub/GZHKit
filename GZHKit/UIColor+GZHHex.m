//
//  UIColor+GZHHex.m
//  GZHKitExample
//
//  Created by 顾振华 on 2017/5/2.
//  Copyright © 2017年 顾振华. All rights reserved.
//

#import "UIColor+GZHHex.h"

@implementation UIColor (GZHHex)

+ (UIColor *)gzh_colorWithHex:(NSInteger)hex {
    UIColor * res = nil;
    NSInteger length = [NSString stringWithFormat:@"%lx", (long)hex].length;
    switch (length) {
        case 3:     res = [self gzh_colorWithHex3:hex];     break;
        case 4:     res = [self gzh_colorWithHex4:hex];     break;
        case 6:     res = [self gzh_colorWithHex6:hex];     break;
        case 8:     res = [self gzh_colorWithHex8:hex];     break;
        default:    res = [UIColor clearColor];             break;
    }
    return res;
}

+ (UIColor *)gzh_colorWithHex3:(NSInteger)hex3 {
    return [self gzh_colorWithHex4:hex3 << 4 | 0xF];
}

+ (UIColor *)gzh_colorWithHex4:(NSInteger)hex4 {
    
    CGFloat r = (hex4 & 0xF000) >> 12;
    CGFloat g = (hex4 & 0x0F00) >> 8;
    CGFloat b = (hex4 & 0x00F0) >> 4;
    CGFloat a = (hex4 & 0x000F) >> 0;
    return [UIColor colorWithRed:r/255 green:g/255 blue:b/255 alpha:a/255];
}

+ (UIColor *)gzh_colorWithHex6:(NSInteger)hex6 {
    return [self gzh_colorWithHex8:hex6 << 8 | 0xFF];
}

+ (UIColor *)gzh_colorWithHex8:(NSInteger)hex8 {
    
    CGFloat r = (hex8 & 0xFF000000) >> 24;
    CGFloat g = (hex8 & 0x00FF0000) >> 16;
    CGFloat b = (hex8 & 0x0000FF00) >> 8;
    CGFloat a = (hex8 & 0x000000FF) >> 0;
    return [UIColor colorWithRed:r/255 green:g/255 blue:b/255 alpha:a/255];
}

@end
