//
//  GRMenuItemCell.m
//  GameReviewer
//
//  Created by sergio on 16/07/14.
//  Copyright (c) 2014 SOM. All rights reserved.
//

#import "GRMenuItemCell.h"
#import "GRMenuItem.h"

@implementation GRMenuItemCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectedBackgroundView = [UIView new];
    }
    return self;
}

- (void)configureWithMenuItem:(GRMenuItem *)menuItem {
    self.textLabel.text = menuItem.title;
//    self.textLabel.cas_styleClass = (menuItem.style == PTVMenuItemStyleNormal) ? nil : @"category";
//    self.indentationLevel = (menuItem.style == PTVMenuItemStyleNormal) ? 0 : 3;
}

@end
