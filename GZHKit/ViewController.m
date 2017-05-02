//
//  ViewController.m
//  GZHKit
//
//  Created by 顾振华 on 2017/5/2.
//  Copyright © 2017年 顾振华. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView *aView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 200, 100)];
    aView.backgroundColor = [UIColor redColor];
    [aView gzh_circular];
    [self.view addSubview:aView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
