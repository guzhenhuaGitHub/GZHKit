//
//  UICollectionViewCell+cell.m
//  ObjectiveC
//
//  Created by 顾振华 on 2017/4/6.
//  Copyright © 2017年 顾振华. All rights reserved.
//

#import "UICollectionViewCell+GZHReusable.h"

@implementation UICollectionViewCell (GZHReusable)

+ (NSString *)reuseIdentifier {
    return NSStringFromClass([self class]);
}

+ (UINib *)nib {
    return [UINib nibWithNibName:[self reuseIdentifier] bundle:nil];
}

@end
