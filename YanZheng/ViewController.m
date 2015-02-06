//
//  ViewController.m
//  YanZheng
//
//  Created by Mac on 15/2/6.
//  Copyright (c) 2015年 Mac. All rights reserved.
//

#import "ViewController.h"
#import "PooCodeView.h"

@interface ViewController ()
{
    UITextField *textFeild;
    PooCodeView *pooView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    pooView = [[PooCodeView alloc]initWithFrame:CGRectMake(20, 100, 100, 40)];
    [self.view addSubview:pooView];
    
    NSLog(@"str:%@",pooView.changeString);
    
    textFeild = [[UITextField alloc]initWithFrame:CGRectMake(20, 160, 100, 40)];
    textFeild.layer.cornerRadius = 5.0;
    textFeild.layer.borderWidth = 1;
    [self.view addSubview:textFeild];
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(20, 220, 100, 40)];
    [button setTitle:@"aaadfa" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor blueColor]];
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}


-(void)buttonClick
{
    //uppercaseString 全部大写   lowercaseString全部小写 （都转化成同一种再去比较）
    if ([[textFeild.text uppercaseString] isEqualToString:[pooView.changeString uppercaseString]]) {
        NSLog(@"验证成功");
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
