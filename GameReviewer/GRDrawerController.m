//
//  GRDrawerController.m
//  GameReviewer
//
//  Created by sergio on 15/07/14.
//  Copyright (c) 2014 SOM. All rights reserved.
//

#import "GRDrawerController.h"
#import "GRNavigationController.h"
#import "GRMenuViewController.h"

#import <MMDrawerController/MMDrawerVisualState.h>

static const CGFloat kMenuWidth = 320.0;

@implementation GRDrawerController

#pragma mark - Helpers

+ (instancetype)applicationDrawerController {
    
    GRMenuViewController *menuViewController = [GRMenuViewController new];
    GRNavigationController *leftViewController = [[GRNavigationController alloc] initWithRootViewController:menuViewController];
    
    UIViewController *centerViewController = [menuViewController instantiateViewControllerForSelectedMenuItem];

    GRDrawerController *drawerController = [[self alloc] initWithCenterViewController:centerViewController
                                                             leftDrawerViewController:leftViewController];
    drawerController.maximumLeftDrawerWidth = kMenuWidth;
    drawerController.openDrawerGestureModeMask = MMOpenDrawerGestureModeBezelPanningCenterView |
    MMOpenDrawerGestureModePanningNavigationBar;
    drawerController.closeDrawerGestureModeMask = MMCloseDrawerGestureModeAll;
    drawerController.showsShadow = NO;
    drawerController.shouldStretchDrawer = NO;
    
    [drawerController setDrawerVisualStateBlock:[MMDrawerVisualState slideVisualStateBlock]];
    
    return drawerController;
}

#pragma mark - Lifecycle

- (id)initWithCenterViewController:(UIViewController *)centerViewController
          leftDrawerViewController:(UIViewController *)leftDrawerViewController
{
    self = [super initWithCenterViewController:centerViewController
                      leftDrawerViewController:leftDrawerViewController];
    
    return self;
}

@end
