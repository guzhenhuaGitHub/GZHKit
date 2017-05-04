//
//  UIColor+GZHHex.h
//  GZHKitExample
//
//  Created by 顾振华 on 2017/5/2.
//  Copyright © 2017年 顾振华. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSString (GZHHex)

- (NSInteger)hex;

@end

@interface UIColor (GZHHex)

+ (UIColor *)gzh_colorWithHex:(NSString *)hex;

@end
