//
//  UIColor+GZHHex.m
//  GZHKitExample
//
//  Created by 顾振华 on 2017/5/2.
//  Copyright © 2017年 顾振华. All rights reserved.
//

#import "UIColor+GZHHex.h"

@implementation NSString (GZHHex)

- (NSInteger)hex {
    return strtol(self.UTF8String, 0, 16);
}

@end

@implementation UIColor (GZHHex)

+ (UIColor *)gzh_colorWithHex:(NSString *)hex {
    hex = [hex stringByReplacingOccurrencesOfString:@"#" withString:@""].uppercaseString;
    UIColor * res = nil;
    switch (hex.length) {
        case 3:     res = [self gzh_colorWithHex3:hex];             break;
        case 4:     res = [self gzh_colorWithHex4:hex];             break;
        case 6:     res = [self gzh_colorWithHex6:hex];             break;
        case 8:     res = [self gzh_colorWithHex8:hex];             break;
        default:    NSAssert(0, @"%@ is not a hex string", hex);    break;
    }
    return res;
}

+ (UIColor *)gzh_colorWithHex3:(NSString *)hex3 {
    return [self gzh_colorWithHex4:[hex3 stringByAppendingString:@"F"]];
}

+ (UIColor *)gzh_colorWithHex4:(NSString *)hex4 {
    
    CGFloat r = (hex4.hex & 0xF000) >> 12;
    CGFloat g = (hex4.hex & 0x0F00) >> 8;
    CGFloat b = (hex4.hex & 0x00F0) >> 4;
    CGFloat a = (hex4.hex & 0x000F) >> 0;
    return [UIColor colorWithRed:r/255 green:g/255 blue:b/255 alpha:a/255];
}

+ (UIColor *)gzh_colorWithHex6:(NSString *)hex6 {
    return [self gzh_colorWithHex8:[hex6 stringByAppendingString:@"FF"]];
}

+ (UIColor *)gzh_colorWithHex8:(NSString *)hex8 {
    
    CGFloat r = (hex8.hex & 0xFF000000) >> 24;
    CGFloat g = (hex8.hex & 0x00FF0000) >> 16;
    CGFloat b = (hex8.hex & 0x0000FF00) >> 8;
    CGFloat a = (hex8.hex & 0x000000FF) >> 0;
    return [UIColor colorWithRed:r/255 green:g/255 blue:b/255 alpha:a/255];
}

@end
