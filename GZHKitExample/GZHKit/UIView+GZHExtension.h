//
//  UIView+GZHExtension.h
//  ObjectiveC
//
//  Created by 顾振华 on 15/9/6.
//  Copyright © 2015年 顾振华. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (GZHDynamic)<UIDynamicItem>

- (UIDynamicItemCollisionBoundsType)gzh_collisionBoundsType;

@end

