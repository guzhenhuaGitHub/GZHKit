//
//  GZHKit.h
//  ObjectiveC
//
//  Created by 顾振华 on 2015/6/10.
//  Copyright © 2015年 顾振华. All rights reserved.
//

#ifndef GZHKit_h
#define GZHKit_h

#ifdef __OBJC__

#import "MBProgressHUD+GZHExtension.h"
#import "NSString+GZHExtension.h"
#import "UIApplication+GZHExtension.h"
#import "UIBarButtonItem+GZHExtension.h"
#import "UICollectionViewCell+GZHReusable.h"
#import "UIColor+GZHExtension.h"
#import "UIColor+GZHHex.h"
#import "UIImage+GZHImage.h"
#import "UIImageView+GZHExtension.h"
#import "UIScreen+GZHExtension.h"
#import "UIStoryboard+GZHStoryboard.h"
#import "UITableViewCell+GZHReusable.h"
#import "UITextField+GZHExtension.h"
#import "UIView+GZHExtension.h"
#import "UIViewController+GZHCurrentViewController.h"

#define weak(obj)   __weak typeof(obj) weak##obj = obj;
#define weakSelf    weak(self)

#endif /* __OBJC__ */

#endif /* GZHKit_h */

