//
//  UITableViewCell+GZHReusable.h
//  GZHKit
//
//  Created by 顾振华 on 2017/5/2.
//  Copyright © 2017年 顾振华. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableViewCell (GZHReusable)

+ (NSString *)gzh_reuseIdentifier;

+ (UINib *)gzh_nib;

+ (__kindof UITableViewCell *)gzh_xibCellReuseFrom:(UITableView *)tableView;

@end
