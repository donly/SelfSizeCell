//
//  MultiLineTextInputTableViewCell.h
//  SelfSizeCell
//
//  Created by Donly Chan on 15/7/31.
//  Copyright (c) 2015年 Donly Chan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MultiLineTextInputTableViewCell : UITableViewCell <UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) UITableView *tableView;

@property (nonatomic, copy) NSString *textString;

@end
