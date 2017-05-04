//
//  NSString+GZHExtension.h
//  GZHKitExample
//
//  Created by 顾振华 on 2017/5/2.
//  Copyright © 2017年 顾振华. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (GZHExtension)
// 是否为空
- (BOOL)isEmpty;
// 去空格字符串
- (NSString *)trim;
// 去空格字符串(为空时显示默认字符串)
- (NSString *)trimWithDefault:(NSString *)_default;
// 计算文件大小
- (unsigned long long)fileSize;

@end
