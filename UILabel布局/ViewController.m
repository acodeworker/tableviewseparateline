//
//  ViewController.m
//  UILabel布局
//
//  Created by Jeremy on 2017/5/5.
//  Copyright © 2017年 Jeremy. All rights reserved.
//

#import "ViewController.h"
#import "Utils.h"
//#import "UIView+viewFrame.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UILabel* titleLab = [Utils LabelwithX:50 andY:100 andWidth:0 andtext:@"第一行文字" andfont:20];
    [self.view addSubview:titleLab];
    
    UILabel* oneLab = [Utils LabelwithX:titleLab.x andY:titleLab.bottom andWidth:100 andtext:@"I am a worker.I live in a small city.\n and my name is James.Do you know me? James.Do you know me?" andfont:20];
    oneLab.centerX = titleLab.centerX;
    [self.view addSubview:oneLab];
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
