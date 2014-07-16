//
//  UIViewController+GRDrawerController.m
//  GameReviewer
//
//  Created by sergio on 15/07/14.
//  Copyright (c) 2014 SOM. All rights reserved.
//

#import "UIViewController+GRDrawerController.h"

#import <MMDrawerController/MMDrawerBarButtonItem.h>
#import <UIViewController+MMDrawerController.h>

@implementation UIViewController (GRDrawerController)

- (void)installMenuBarButtonItem {
    self.navigationItem.leftBarButtonItem = [[MMDrawerBarButtonItem alloc] initWithTarget:self
                                                                                   action:@selector(toggleMenu:)];
}

- (void)toggleMenu:(id)sender {
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
}

@end
