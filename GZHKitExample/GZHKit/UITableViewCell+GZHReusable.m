//
//  UITableViewCell+GZHReusable.m
//  GZHKit
//
//  Created by 顾振华 on 2017/5/2.
//  Copyright © 2017年 顾振华. All rights reserved.
//

#import "UITableViewCell+GZHReusable.h"

@implementation UITableViewCell (GZHReusable)

+ (NSString *)gzh_reuseIdentifier {
    return NSStringFromClass([self class]);
}

+ (UINib *)gzh_nib {
    return [UINib nibWithNibName:[self gzh_reuseIdentifier] bundle:nil];
}

+ (__kindof UITableViewCell *)gzh_xibCellReuseFrom:(UITableView *)tableView {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[self gzh_reuseIdentifier]];
    
    if (nil == cell) {
        [tableView registerNib:[self gzh_nib] forCellReuseIdentifier:[self gzh_reuseIdentifier]];
        cell = [tableView dequeueReusableCellWithIdentifier:[self gzh_reuseIdentifier]];
    }
    return cell;
}

@end
