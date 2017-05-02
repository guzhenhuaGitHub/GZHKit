//
//  NSString+GZHExtension.h
//  GZHKitExample
//
//  Created by 顾振华 on 2017/5/2.
//  Copyright © 2017年 顾振华. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (GZHExtension)

- (BOOL)isEmpty;

- (NSString *)trim;
- (NSString *)trimWithDefault:(NSString *)_default;

- (unsigned long long)fileSize;

@end
