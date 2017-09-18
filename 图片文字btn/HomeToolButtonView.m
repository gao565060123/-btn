
//
//  HomeToolButtonView.m
//  StockPro
//
//  Created by mybook on 2017/6/12.
//  Copyright © 2017年 石塔Mr.高超. All rights reserved.
//

#import "HomeToolButtonView.h"
#import "BaseButton.h"


#define SCREEN_WIDTH  [[UIScreen mainScreen] bounds].size.width

#define SCREEN_HEIGHT  [[UIScreen mainScreen] bounds].size.height


@implementation HomeToolButtonView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initHomeExpressViewWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        [self createToolsBtnViewWithFrame:frame];
    }
    return self;
}



- (void)createToolsBtnViewWithFrame:(CGRect)frame{
    
    UIView *base = [[UIView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
    CGFloat btn_w = (SCREEN_WIDTH - 50)* 0.25;
    CGFloat btn_h = btn_w;
    
    
    self.btnArray = [NSMutableArray array];

    
    NSMutableDictionary *dic1 = [NSMutableDictionary dictionary];
    [dic1 setValue:@"lf.jpg" forKey:@"img"];
    [dic1 setValue:@"自选" forKey:@"title"];
    [self.btnArray addObject:dic1];

    NSMutableDictionary *dic2 = [NSMutableDictionary dictionary];
    [dic2 setValue:@"lf.jpg" forKey:@"img"];
    [dic2 setValue:@"交易" forKey:@"title"];
    [self.btnArray addObject:dic2];
    
    NSMutableDictionary *dic3 = [NSMutableDictionary dictionary];
    [dic3 setValue:@"lf.jpg" forKey:@"img"];
    [dic3 setValue:@"黑马" forKey:@"title"];
    [self.btnArray addObject:dic3];
    
    NSMutableDictionary *dic4 = [NSMutableDictionary dictionary];
    [dic4 setValue:@"lf.jpg" forKey:@"img"];
    [dic4 setValue:@"智能搜股" forKey:@"title"];
    [self.btnArray addObject:dic4];
    
    NSMutableDictionary *dic5 = [NSMutableDictionary dictionary];
    [dic5 setValue:@"lf.jpg" forKey:@"img"];
    [dic5 setValue:@"每日复盘" forKey:@"title"];
    [self.btnArray addObject:dic5];
    
    NSMutableDictionary *dic6 = [NSMutableDictionary dictionary];
    [dic6 setValue:@"lf.jpg" forKey:@"img"];
    [dic6 setValue:@"财经日历" forKey:@"title"];
    [self.btnArray addObject:dic6];
    
    NSMutableDictionary *dic7 = [NSMutableDictionary dictionary];
    [dic7 setValue:@"lf.jpg" forKey:@"img"];
    [dic7 setValue:@"个股诊断" forKey:@"title"];
    [self.btnArray addObject:dic7];
    
    NSMutableDictionary *dic8 = [NSMutableDictionary dictionary];
    [dic8 setValue:@"lf.jpg" forKey:@"img"];
    [dic8 setValue:@"市场强弱" forKey:@"title"];
    [self.btnArray addObject:dic8];
    
    
    
    NSMutableDictionary *dic9 = [NSMutableDictionary dictionary];
    [dic9 setValue:@"lf.jpg" forKey:@"img"];
    [dic9 setValue:@"融资融券" forKey:@"title"];
    [self.btnArray addObject:dic9];
    
    NSMutableDictionary *dic10 = [NSMutableDictionary dictionary];
    [dic10 setValue:@"lf.jpg" forKey:@"img"];
    [dic10 setValue:@"沪港通" forKey:@"title"];
    [self.btnArray addObject:dic10];
    
    NSMutableDictionary *dic11 = [NSMutableDictionary dictionary];
    [dic11 setValue:@"lf.jpg" forKey:@"img"];
    [dic11 setValue:@"股指期货" forKey:@"title"];
    [self.btnArray addObject:dic11];
    
    NSMutableDictionary *dic12 = [NSMutableDictionary dictionary];
    [dic12 setValue:@"lf.jpg" forKey:@"img"];
    [dic12 setValue:@"龙虎榜" forKey:@"title"];
    [self.btnArray addObject:dic12];
    

    

    
    
    
    // 按钮 高度---- 图片 : 文字  = 3 : 1
    for (int i = 0; i < 12; i++) {
        NSDictionary *dic = self.btnArray[i];
        BaseButton *btn = [BaseButton createBlockButton:dic[@"title"] imageStr: dic[@"img"] frame:CGRectMake((i % 4) * (btn_w + 10) + 10, (i / 4) * (btn_h + 10) + 10, btn_w, btn_h) event:UIControlEventTouchUpInside block:^{
            if (self.toolButtonDelegate &&[self.toolButtonDelegate respondsToSelector:@selector(homeToolButtonViewClickAtIndex:)]) {
                [self.toolButtonDelegate homeToolButtonViewClickAtIndex:i];
            }
        }];
        //          | -  - |   -----------  | -  - |      gap = 0.2 * w           gap = 0.2 * h
        //            0.2  - - -  0.6  - - -  0.2
//        
//        ---------------------
//        |     gap  0.2   |
//        |0.2      --------  |
//        |gap                |
//        |    |                  |
//        |    |                  |
//        |------------------|
        
        //   0.2      -   0.6      -      0.2
        //   顶           图片          文字
        btn.cusImgFrame = CGRectMake(0.2 * btn_w, 0.2 * btn_w, 0.6 * btn_w, 0.6 * btn_w);
        btn.cusTitleFrame = CGRectMake(0, 0.8 * btn_w , btn_w, btn_w * 0.2);
        btn.backgroundColor = [UIColor colorWithRed:240/255.0 green:240/255.0 blue:240/255.0 alpha:1];
        btn.layer.cornerRadius = 10;
        btn.layer.masksToBounds = YES;
        
        [base addSubview:btn];
        
    }
    [self addSubview:base];
}




@end
