//
//  ProgressCircleView.h
//  ProgressCircleDemo
//
//  Created by xxt-imac on 16/5/7.s
//  Copyright © 2016年 xxt-imac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProgressCircleView : UIView

@property(nonatomic,assign) int inveral;
@property(nonatomic,assign) int inveralFor;
@property(nonatomic,assign) int backInveral;

@property (nonatomic,assign) float typicalInvel;



@property(nonatomic,assign) float circleRed;
@property(nonatomic,assign) float circleGreen;
@property(nonatomic,assign) float circleBlue;
@property(nonatomic,assign) float circleWidth;
@property(nonatomic,strong) UIColor *stringColor;
@property(nonatomic,strong) UIFont *stringFont;
/**
 *  这是一个加载进度圈的方法 参数有不懂得可以看注释
 *
 *  @param inveral     我们设定的时间（多少秒）
 *  @param red         进度圈设定颜色RGB中R的大小
 *  @param green       进度圈设定颜色RGB中G的大小
 *  @param blue        进度圈设定颜色RGB中B的大小
 *  @param circleWidth 进度圈的宽度
 *  @param stringColor 进度圈中倒计时文字颜色
 *  @param stringFont  进度圈中倒计时的字体大小
 */

-(void)progressCircleView:(int)inveral circleWithColorRed:(CGFloat)red gree:(CGFloat)green blue:(CGFloat)blue WithCircleWidth:(CGFloat)circleWidth WithStringColor:(UIColor *)stringColor WithStringFont:(UIFont *)stringFont;
@end
