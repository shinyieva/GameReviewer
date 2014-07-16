//
//  GRMenuViewController.h
//  GameReviewer
//
//  Created by sergio on 15/07/14.
//  Copyright (c) 2014 SOM. All rights reserved.
//

@import UIKit;

/**
 *  Manages the application menu.
 */
@interface GRMenuViewController : UIViewController

/**
 Instantiates the view controller for the selected menu item.
 */
- (UINavigationController *)instantiateViewControllerForSelectedMenuItem;

@end
