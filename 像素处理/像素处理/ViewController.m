//
//  ViewController.m
//  像素处理
//
//  Created by HanYong on 2017/11/24.
//  Copyright © 2017年 HanYong. All rights reserved.
//

#define kscale  [UIScreen mainScreen].bounds.size.width/750.0

#define AlertW  580.0*kscale   //580px -- alertView  宽
#define AlertH  290.0*kscale   //290px = 560px - 270px -- alertView  高
#define SpaceW  20.0*kscale     //20px  -- 各个栏目之间的距离
#define LineH   1.0 / [UIScreen mainScreen].scale     //1px   -- 横线的高度
#define ButtonH 90.0*kscale     //90px  -- 按钮的高度

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setLine];
}

-(void)setLine{
    
    /*-- 弹窗 --*/
    UIView *alertView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, AlertW, AlertH)];
    alertView.backgroundColor = [UIColor orangeColor];
    alertView.layer.cornerRadius = 8.0;
    alertView.layer.position = self.view.center;
    [self.view addSubview:alertView];
    
    
    for (NSInteger i=0; i<10; i++) {
        /*-- 横线  --*/
        UILabel *lineX = [[UILabel alloc] initWithFrame:CGRectMake(0, (100+i*15), self.view.frame.size.width, 1.0/[UIScreen mainScreen].scale)];
        lineX.backgroundColor = [UIColor blackColor];
        [self.view addSubview:lineX];
        
        /*-- 竖线  --*/
        UILabel *lineY = [[UILabel alloc] initWithFrame:CGRectMake(10+i*15, 90, 1.0/[UIScreen mainScreen].scale, self.view.frame.size.width)];
        lineY.backgroundColor = [UIColor blackColor];
        [self.view addSubview:lineY];
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
