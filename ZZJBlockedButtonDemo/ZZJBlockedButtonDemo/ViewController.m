//
//  ViewController.m
//  ZZJBlockedButtonDemo
//
//  Created by chefuzzj on 16/7/4.
//  Copyright © 2016年 chefuzzj. All rights reserved.
//

#import "ViewController.h"
#import "ZZJBlockButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    CGRect rect = CGRectMake(100, 100, 100, 40);
    
    //如果block中用到了self,注意循环引用问题
//    __weak typeof(self)weakSelf = self;
    ZZJBlockButton * button = [ZZJBlockButton blockedButtonWithTapHandler:^{
        NSLog(@"点击了按钮");
    } frame:rect addToSuperview:self.view];
    
    [button setTitle:@"点我" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor lightGrayColor];
    
}



@end
