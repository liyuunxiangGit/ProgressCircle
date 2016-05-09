//
//  ViewController.m
//  ProgressCircleDemo
//
//  Created by xxt-imac on 16/5/7.
//  Copyright © 2016年 xxt-imac. All rights reserved.
//

#import "ViewController.h"
#import "ProgressCircleView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
}
- (IBAction)startCircle:(id)sender {
    ProgressCircleView *circleView = [[ProgressCircleView alloc]initWithFrame:CGRectMake(130, 160, 60, 60)];
    [circleView progressCircleView:20 circleWithColorRed:1.0 gree:0 blue:0 WithCircleWidth:3 WithStringColor:[UIColor blueColor] WithStringFont:[UIFont systemFontOfSize:10]];
    [self.view addSubview:circleView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
