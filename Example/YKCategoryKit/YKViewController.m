//
//  YKViewController.m
//  YKCategoryKit
//
//  Created by 75438777@qq.com on 05/09/2018.
//  Copyright (c) 2018 75438777@qq.com. All rights reserved.
//

#import "YKViewController.h"
#import "NetworkHelper.h"

@interface YKViewController ()

@end

@implementation YKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [[NetworkHelper sharedInstance] requestMethod:@"GET" url:@"https://www.baidu.com" parameters:nil finishBlock:^(id data, NSError *error) {
        if (error) {
            NSLog(@"error----:%@",error);
        }else{
            NSLog(@"data----:%@",data);
        }
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
