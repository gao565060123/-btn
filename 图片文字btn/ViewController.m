//
//  ViewController.m
//  图片文字btn
//
//  Created by mybook on 2017/9/18.
//  Copyright © 2017年 石塔Mr.高超. All rights reserved.
//

#import "ViewController.h"

#import "HomeToolButtonView.h"

#define SCREEN_WIDTH  [[UIScreen mainScreen] bounds].size.width

#define SCREEN_HEIGHT  [[UIScreen mainScreen] bounds].size.height

@interface ViewController ()<HomeToolButtonViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    HomeToolButtonView *views = [[HomeToolButtonView alloc] initHomeExpressViewWithFrame:CGRectMake(0, 60, SCREEN_WIDTH, SCREEN_WIDTH * 0.25)];
    views.toolButtonDelegate = self;
    [self.view addSubview:views];
}

- (void)homeToolButtonViewClickAtIndex:(int)index
{
    NSLog(@"=============  %d   ===========",index);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
