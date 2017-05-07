//
//  TabViewController.m
//  UILabel布局
//
//  Created by Jeremy on 2017/5/7.
//  Copyright © 2017年 Jeremy. All rights reserved.
//

#import "TabViewController.h"
#import "ArrayDataSource.h"
#import "SeparateTableViewCell.h"

@interface TabViewController ()

@property (nonatomic,strong)UITableView* tableView;
@property (nonatomic, strong) ArrayDataSource *photosArrayDataSource;

@end

@implementation TabViewController
static NSString * const PhotoCellIdentifier = @"PhotoCell";

- (void)viewDidLoad {
   
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [self.view addSubview:self.tablview];
    self.view.backgroundColor = [UIColor whiteColor];
    self.tableView  = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
     TableViewCellConfigureBlock configureCell = ^(SeparateTableViewCell *cell, id photo) {
        [cell configureForPhoto:photo];
    };
    //这里必须声明一个属性来赋值，因为datasource是弱引用，对象马上会被释放。
    self.photosArrayDataSource = [[ArrayDataSource alloc] initWithItems:@[@"a",@"b",@"c",@"d",@"e"]
                                                                     cellIdentifier:PhotoCellIdentifier
                                                                 configureCellBlock:configureCell];
    self.tableView.dataSource = self.photosArrayDataSource;
    [self.view addSubview: self.tableView];
    [self.tableView registerClass:[SeparateTableViewCell class] forCellReuseIdentifier:PhotoCellIdentifier];
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
