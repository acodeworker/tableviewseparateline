//
//  BaseTableViewCell.m
//  UILabel布局
//
//  Created by Jeremy on 2017/5/8.
//  Copyright © 2017年 Jeremy. All rights reserved.
//

#import "BaseTableViewCell.h"
#import "Utils.h"
@implementation BaseTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (void) layoutSubviews {
    [super layoutSubviews];
    for (UIView *view in  self.subviews) {
        if (![view isKindOfClass:[UIControl class]]) {
            if (CGRectGetHeight(view.frame) < 3) {
                view.height = 1/[UIScreen mainScreen].scale;
                view.x = 0;
                view.hidden = self.separatorHidden;

            }
        }
    }
    
}


@end
