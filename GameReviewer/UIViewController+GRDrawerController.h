//
//  UIViewController+GRDrawerController.h
//  GameReviewer
//
//  Created by sergio on 15/07/14.
//  Copyright (c) 2014 SOM. All rights reserved.
//

@import UIKit;

/**
 *  Provides helper methods for interact with the menu.
 */
@interface UIViewController (GRDrawerController)

/**
 *  Installs the menu bar button item.
 */
- (void)installMenuBarButtonItem;

/**
 *  Toggles the menu drawer.
 */
- (void)toggleMenu:(id)sender;

@end
