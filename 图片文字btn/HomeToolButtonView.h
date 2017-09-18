//
//  HomeToolButtonView.h
//  StockPro
//
//  Created by mybook on 2017/6/12.
//  Copyright © 2017年 石塔Mr.高超. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol HomeToolButtonViewDelegate <NSObject>

- (void)homeToolButtonViewClickAtIndex:(int)index;

@end

@interface HomeToolButtonView : UIView
/** img + title*/ 
@property (nonatomic, strong) NSMutableArray *btnArray;
@property (nonatomic, assign) id<HomeToolButtonViewDelegate>  toolButtonDelegate;

- (instancetype)initHomeExpressViewWithFrame:(CGRect)frame;

@end
