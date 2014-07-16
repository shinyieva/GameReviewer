//
//  GRTableViewCell.m
//  GameReviewer
//
//  Created by sergio on 16/07/14.
//  Copyright (c) 2014 SOM. All rights reserved.
//

#import "GRTableViewCell.h"

@implementation GRTableViewCell


+ (void)registerNibInTableView:(UITableView *)tableView {
    NSParameterAssert(tableView);
    
    UINib *nib = [UINib nibWithNibName:NSStringFromClass(self) bundle:nil];
    [tableView registerNib:nib forCellReuseIdentifier:self.reuseIdentifier];
    tableView.rowHeight = self.defaultHeight;
}

+ (void)registerClassInTableView:(UITableView *)tableView {
    NSParameterAssert(tableView);
    
    [tableView registerClass:self forCellReuseIdentifier:self.reuseIdentifier];
    tableView.rowHeight = self.defaultHeight;
}

+ (NSString *)reuseIdentifier {
    return NSStringFromClass(self);
}

+ (CGFloat)defaultHeight {
    return 44.0;
}


@end
