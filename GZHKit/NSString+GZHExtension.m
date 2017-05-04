//
//  NSString+GZHExtension.m
//  GZHKitExample
//
//  Created by 顾振华 on 2017/5/2.
//  Copyright © 2017年 顾振华. All rights reserved.
//

#import "NSString+GZHExtension.h"

@implementation NSString (GZHExtension)

- (BOOL)isEmpty {
    return ! (self.length > 0);
}
    
- (NSString *)trim {
    return [self trimWithDefault:@""];
}
    
- (NSString *)trimWithDefault:(NSString *)_default {
    
    NSString * trimString = [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return self.length > 0 ? trimString : _default;
}

- (unsigned long long)fileSize
{
    // 总大小
    unsigned long long size = 0;
    // 文件管理者
    NSFileManager *mgr = [NSFileManager defaultManager];
    // 是否为文件夹
    BOOL isDirectory = NO;
    // 路径是否存在
    BOOL exists = [mgr fileExistsAtPath:self isDirectory:&isDirectory];
    // 不存在 中断处理
    if (!exists) return size;
    // 存在 继续处理
    if (isDirectory) { // 文件夹
        // 获得文件夹的大小  == 获得文件夹中所有文件的总大小
        NSDirectoryEnumerator *enumerator = [mgr enumeratorAtPath:self];
        for (NSString *subpath in enumerator) {
            // 全路径
            NSString *fullSubpath = [self stringByAppendingPathComponent:subpath];
            // 累加文件大小
            size += [mgr attributesOfItemAtPath:fullSubpath error:nil].fileSize;
        }
    } else { // 文件
        size = [mgr attributesOfItemAtPath:self error:nil].fileSize;
    }
    
    return size;
}

@end
