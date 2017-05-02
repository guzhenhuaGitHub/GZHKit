//
//  UICollectionViewCell+cell.h
//  ObjectiveC
//
//  Created by 顾振华 on 2017/4/6.
//  Copyright © 2017年 顾振华. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UICollectionViewCell (GZHReusable)

+ (NSString *)reuseIdentifier;

+ (UINib *)nib;

@end
