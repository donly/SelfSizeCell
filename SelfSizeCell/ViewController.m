//
//  ViewController.m
//  SelfSizeCell
//
//  Created by Donly Chan on 15/7/31.
//  Copyright (c) 2015年 Donly Chan. All rights reserved.
//

#import "ViewController.h"
#import "MultiLineTextInputTableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 150.f;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MultiLineTextInputTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MultiLineTextInputTableViewCell"
                                                                            forIndexPath:indexPath];
    cell.tableView = tableView;
    cell.titleLabel.text = @"Multi line cell";
    cell.textString = @"Test String\nAnd another string\nAnd another";
    
    return cell;
}

@end
