//
//  ViewController.m
//  HHZUtils
//
//  Created by 陈哲是个好孩子 on 2017/6/19.
//  Copyright © 2017年 陈哲是个好孩子. All rights reserved.
//

#import "ViewController.h"
#import "HHZDateToolFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"shijian:%@",[[HHZDateToolFactory getYearAndTimeFormat] getTimeStringFromTimeStamp:1503723662]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
