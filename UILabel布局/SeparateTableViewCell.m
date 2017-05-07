//
//  SeparateTableViewCell.m
//  UILabel布局
//
//  Created by Jeremy on 2017/5/7.
//  Copyright © 2017年 Jeremy. All rights reserved.
//

#import "SeparateTableViewCell.h"

@implementation SeparateTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
    };
    return self;

}

- (void)configureForPhoto:(id)photo
{
    self.textLabel.text = @"name";
    self.detailTextLabel.text = @"detail";
    

}

@end
