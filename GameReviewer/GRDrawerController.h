//
//  GRDrawerController.h
//  GameReviewer
//
//  Created by sergio on 15/07/14.
//  Copyright (c) 2014 SOM. All rights reserved.
//

#import <MMDrawerController/MMDrawerController.h>

/**
 * A drawer controller that delegates supported orientations to the center view controller.
 */
@interface GRDrawerController : MMDrawerController

/**
 * Creates and returns a drawer controller configured for the application.
 */
+ (instancetype)applicationDrawerController;

@end
