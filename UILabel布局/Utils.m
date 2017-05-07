//
//  Utils.m
//  UILabel布局
//
//  Created by Jeremy on 2017/5/5.
//  Copyright © 2017年 Jeremy. All rights reserved.
//

#import "Utils.h"

@implementation UIView (viewFrame)
- (CGSize)size;
{
    return [self frame].size;
}

- (void)setSize:(CGSize)size;
{
    CGPoint origin = [self frame].origin;
    [self setFrame:CGRectMake(origin.x, origin.y, size.width, size.height)];
}

-(CGFloat)x{
    CGRect frame=[self frame];
    return frame.origin.x;
}

-(void)setX:(CGFloat)x{
    CGRect frame=[self frame];
    frame.origin.x=x;
    [self setFrame:frame];
}

-(CGFloat)y{
    CGRect frame=[self frame];
    return frame.origin.y;
}

-(void)setY:(CGFloat)y{
    CGRect frame=[self frame];
    frame.origin.y=y;
    return [self setFrame:frame];
}





- (CGFloat)right;
{
    return CGRectGetMaxX([self frame]);
}

- (void)setRight:(CGFloat)right;
{
    CGRect frame = [self frame];
    frame.origin.x = right - frame.size.width;
    
    [self setFrame:frame];
}

- (CGFloat)bottom;
{
    return CGRectGetMaxY([self frame]);
}

- (void)setBottom:(CGFloat)bottom;
{
    CGRect frame = [self frame];
    frame.origin.y = bottom - frame.size.height;
    [self setFrame:frame];
}

- (CGFloat)centerX;
{
    return [self center].x;
}

- (void)setCenterX:(CGFloat)centerX;
{
    [self setCenter:CGPointMake(centerX, self.center.y)];
}

- (CGFloat)centerY;
{
    return [self center].y;
}

- (void)setCenterY:(CGFloat)centerY;
{
    [self setCenter:CGPointMake(self.center.x, centerY)];
}

- (CGFloat)width;
{
    return CGRectGetWidth([self frame]);
}

- (void)setWidth:(CGFloat)width;
{
    CGRect frame = [self frame];
    frame.size.width = width;
    [self setFrame:CGRectStandardize(frame)];
}

- (CGFloat)height;
{
    return CGRectGetHeight([self frame]);
}

- (void)setHeight:(CGFloat)height;
{
    CGRect frame=[self frame];
    frame.size.height = height;
    [self setFrame:CGRectStandardize(frame)];
}
@end

@implementation Utils
+ (UILabel*)LabelwithX:(CGFloat)x andY:(CGFloat)y andWidth:(CGFloat)width andtext:(NSString*)text andfont:(CGFloat)font
{
    if (width == 0) {
        width = [UIScreen mainScreen].bounds.size.width;
    }
    
    UILabel* lab = [[UILabel alloc]initWithFrame:CGRectMake(x,y, width, 0)];
    lab.text = text;
    if (font != 0) {
        lab.font = [UIFont systemFontOfSize:font];
    }
    lab.backgroundColor  = [UIColor redColor];
    lab.numberOfLines = 0;
    [lab sizeToFit];
//    lab.center = CGPointMake(lab1.center.x, lab1.center.y + 10 + lab.bounds.size.height/2);
//    [self.view addSubview:lab];
    return lab;
}
@end
