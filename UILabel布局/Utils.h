//
//  Utils.h
//  UILabel布局
//
//  Created by Jeremy on 2017/5/5.
//  Copyright © 2017年 Jeremy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIView (viewFrame)

@property (nonatomic, assign) CGSize size;

@property (nonatomic,assign)  CGFloat x;

@property  (nonatomic,assign) CGFloat y;

@property (nonatomic, assign) CGFloat bottom;

@property (nonatomic, assign) CGFloat right;

@property (nonatomic, assign) CGFloat centerX;

@property (nonatomic, assign) CGFloat centerY;

@property (nonatomic, assign) CGFloat width;

@property (nonatomic, assign) CGFloat height;

@end


@interface Utils : NSObject
/**
 *给定一个坐标就可以返回一个大小自适应的label
 */
+ (UILabel*)LabelwithX:(CGFloat)x andY:(CGFloat)y andWidth:(CGFloat)width andtext:(NSString*)text andfont:(CGFloat)font;
@end
