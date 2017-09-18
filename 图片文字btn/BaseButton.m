//
//  BaseButton.m
//  GCPrivatePlacementFrameworks
//
//  Created by mybook on 2017/4/10.
//  Copyright © 2017年 石塔Mr.GC. All rights reserved.
//

#import "BaseButton.h"

@implementation BaseButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    if (self.cusImgFrame.size.width != 0) {
        return self.cusImgFrame;
    }
    CGFloat margin = 5;
    CGFloat imgW = contentRect.size.width - 2 * margin;
    CGFloat imgX = margin;
    CGFloat imgY = margin;
    return CGRectMake(imgX, imgY, imgW, imgW);
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    
    if (self.cusTitleFrame.size.width != 0) {
        return self.cusTitleFrame;
    }
    CGFloat margin = 5;
    CGFloat titleY = contentRect.size.width - 2 * margin + margin + margin;
    CGFloat titleW = contentRect.size.width;
    CGFloat titleH = 10;
    return CGRectMake(0, titleY, titleW, titleH);
}

- (void)setHighlighted:(BOOL)highlighted
{
    
}

+ (instancetype)createBlockButton:(NSString *)title frame:(CGRect)frame event:(UIControlEvents)touchEvent block:(BlockButton)block
{
    BaseButton *btn = [BaseButton buttonWithType:UIButtonTypeCustom];
    [btn setFrame:frame];
    [btn setTitle:title forState:UIControlStateNormal];
    btn.imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:13];
    btn.titleLabel.textAlignment = NSTextAlignmentCenter;
    
    [btn addTarget:btn action:@selector(btnClick:) forControlEvents:touchEvent];
    btn.block = block;
    return btn;
}




+ (instancetype)createBlockButton:(NSString *)title imageStr:(NSString *)img frame:(CGRect)frame event:(UIControlEvents)touchEvent block:(BlockButton)block
{
    BaseButton *btn = [BaseButton buttonWithType:UIButtonTypeCustom];
    [btn setFrame:frame];
    [btn setTitle:title forState:UIControlStateNormal];
    btn.imageView.contentMode = UIViewContentModeScaleAspectFit;
    [btn setImage:[UIImage imageNamed:img] forState:UIControlStateNormal]; //
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:13];
    btn.titleLabel.textAlignment = NSTextAlignmentCenter;
    
    [btn addTarget:btn action:@selector(btnClick:) forControlEvents:touchEvent];
    btn.block = block;
    return btn;
}








- (void)btnClick:(BaseButton *)sender
{
    sender.block();
}




@end
