//
//  GRMenuItem.h
//  GameReviewer
//
//  Created by sergio on 15/07/14.
//  Copyright (c) 2014 SOM. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface GRMenuItem : MTLModel

/**
 The menu item title.
 */
@property (copy, nonatomic, readonly) NSString *title;

/**
 The class name of the view controller that should be created when this item is selected.
 */
@property (nonatomic, readonly) Class viewControllerClass;

/**
 A dictionary containing default values for the properties of the view controller.
 */
@property (copy, nonatomic, readonly) NSDictionary *viewControllerValues;

/**
 Creates and returns an array with the application menu items.
 */
+ (NSArray *)menuItems;

/**
 Creates and returns a `UINavigationController` initialized with an instance of the receiver's `viewControllerClass`.
 */
- (UINavigationController *)instantiateViewController;

@end
