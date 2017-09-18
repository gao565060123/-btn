//
//  BaseButton.h
//  GCPrivatePlacementFrameworks
//
//  Created by mybook on 2017/4/10.
//  Copyright © 2017年 石塔Mr.GC. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef void(^BlockButton)();
@interface BaseButton : UIButton
@property (nonatomic, assign) CGRect cusTitleFrame;
@property (nonatomic, assign) CGRect cusImgFrame;
@property (nonatomic, copy) BlockButton block;
+ (instancetype)createBlockButton:(NSString *)title frame:(CGRect)frame event:(UIControlEvents)touchEvent block:(BlockButton)block;

+ (instancetype)createBlockButton:(NSString *)title imageStr:(NSString *)img frame:(CGRect)frame event:(UIControlEvents)touchEvent block:(BlockButton)block;

@end
