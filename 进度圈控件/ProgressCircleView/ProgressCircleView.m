//
//  ProgressCircleView.m
//  ProgressCircleDemo
//
//  Created by xxt-imac on 16/5/7.
//  Copyright © 2016年 xxt-imac. All rights reserved.
//

#import "ProgressCircleView.h"

@implementation ProgressCircleView

-(void)progressCircleView:(int)inveral circleWithColorRed:(CGFloat)red gree:(CGFloat)green blue:(CGFloat)blue WithCircleWidth:(CGFloat)circleWidth WithStringColor:(UIColor *)stringColor WithStringFont:(UIFont *)stringFont
{
    self.backgroundColor = [UIColor clearColor];

    self.circleRed = red;
    self.circleGreen = green;
    self.circleBlue = blue;
    
    self.circleWidth = circleWidth;
    
    self.stringColor = stringColor;
    self.stringFont = stringFont;
    
    
    self.typicalInvel = (float)1.0/inveral;
    self.inveralFor = inveral;
    
    self.backInveral = 0;
    self.inveral = inveral;
    
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(setNeedsDisplay) userInfo:nil repeats:YES];
    
    
}

-(void)drawRect:(CGRect)rect
{
    self.inveralFor--;
    self.backInveral++;

    CGFloat viewH = rect.size.height;
    CGFloat viewW = rect.size.width;
    
    CGFloat textPointX = viewW/2;
    CGFloat textPointY = viewH/2;
    
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    NSString *str = [NSString stringWithFormat:@"%dS",self.inveralFor];
    NSDictionary *attr = @{NSFontAttributeName:self.stringFont,NSForegroundColorAttributeName:self.stringColor};
    [str drawAtPoint:CGPointMake(textPointX-5, textPointY-5) withAttributes:attr];
    
    CGContextSetLineWidth(context, self.circleWidth);
    CGContextSetRGBStrokeColor(context, self.circleRed, self.circleGreen, self.circleBlue, 1);
    
    CGFloat radius = (viewW-10)*0.5;
    CGFloat arcX = textPointX;
    CGFloat arcY = textPointY;
    CGFloat endAngle = (self.backInveral*self.typicalInvel) * 2 * M_PI - M_PI_4;;
    
    CGContextAddArc(context, arcX, arcY, radius, -M_PI_4, endAngle, 0);
    
    CGContextStrokePath(context);
    
    if (self.backInveral == self.inveral) {
        [self removeFromSuperview];
    }
    
}


@end
