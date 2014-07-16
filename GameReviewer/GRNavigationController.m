//
//  GRNavigationController.m
//  GameReviewer
//
//  Created by sergio on 15/07/14.
//  Copyright (c) 2014 SOM. All rights reserved.
//

#import "GRNavigationController.h"

@implementation GRNavigationController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.navigationBar.translucent = NO;
    self.interactivePopGestureRecognizer.enabled = NO;
}

@end
