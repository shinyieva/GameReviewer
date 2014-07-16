//
//  GRTableViewCell.h
//  GameReviewer
//
//  Created by sergio on 16/07/14.
//  Copyright (c) 2014 SOM. All rights reserved.
//

@import UIKit;

/**
 Base table view cell.
 */

@interface GRTableViewCell : UITableViewCell

+ (void)registerNibInTableView:(UITableView *)tableView;

+ (void)registerClassInTableView:(UITableView *)tableView;

+ (NSString *)reuseIdentifier;

+ (CGFloat)defaultHeight;

@end
