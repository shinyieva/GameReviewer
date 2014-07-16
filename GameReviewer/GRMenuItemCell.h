//
//  GRMenuItemCell.h
//  GameReviewer
//
//  Created by sergio on 16/07/14.
//  Copyright (c) 2014 SOM. All rights reserved.
//

#import "GRTableViewCell.h"

@class GRMenuItem;

@interface GRMenuItemCell : GRTableViewCell

- (void)configureWithMenuItem:(GRMenuItem *)menuItem;

@end
