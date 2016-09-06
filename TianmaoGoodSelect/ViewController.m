//
//  ViewController.m
//  TianmaoGoodSelect
//
//  Created by vd on 16/7/24.
//  Copyright © 2016年 vd. All rights reserved.
//

#import "ViewController.h"
#import "RJGoodSelectVIew.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    RJGoodSelectVIew * view = [[RJGoodSelectVIew alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:view];
     
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
