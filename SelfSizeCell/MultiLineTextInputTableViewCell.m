//
//  MultiLineTextInputTableViewCell.m
//  SelfSizeCell
//
//  Created by Donly Chan on 15/7/31.
//  Copyright (c) 2015年 Donly Chan. All rights reserved.
//

#import "MultiLineTextInputTableViewCell.h"

@implementation MultiLineTextInputTableViewCell

- (void)setTextString:(NSString *)textString {
    self.textView.text = textString;
    [self textViewDidChange:self.textView];
}

- (NSString *)textString {
    return self.textView.text;
}

#pragma mark - UITextViewDelegate
- (void)textViewDidChange:(UITextView *)textView {
    CGSize size = textView.bounds.size;
    CGFloat fixedWidth = textView.frame.size.width;
    CGSize newSize = [textView sizeThatFits:CGSizeMake(fixedWidth, MAXFLOAT)];
    
    if (size.height != newSize.height) {
        [UIView setAnimationsEnabled:NO];
        [self.tableView beginUpdates];
        [self.tableView endUpdates];
        [UIView setAnimationsEnabled:YES];
        
        NSIndexPath *thisIndexPath = [self.tableView indexPathForCell:self];
        if (thisIndexPath) {
            [self.tableView scrollToRowAtIndexPath:thisIndexPath
                                  atScrollPosition:UITableViewScrollPositionBottom animated:FALSE];
        }
    }
}

@end
