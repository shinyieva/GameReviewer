//
//  GRMenuItem.m
//  GameReviewer
//
//  Created by sergio on 15/07/14.
//  Copyright (c) 2014 SOM. All rights reserved.
//

#import "GRMenuItem.h"
#import "GRNavigationController.h"

@implementation GRMenuItem

+ (NSArray *)menuItems {
#warning change to my menu configuration
    return @[
             [self modelWithDictionary:@{
                                         @"title": NSLocalizedString(@"menu-item.home", @""),
                                         @"viewControllerClass": NSClassFromString(@"UIViewController"),
                                         @"viewControllerValues": @{
                                                 @"title": NSLocalizedString(@"home.title", @"")
                                                 }
                                         } error:NULL],
             [self modelWithDictionary:@{
                                         @"title": NSLocalizedString(@"menu-item.guide", @""),
                                         @"viewControllerClass": NSClassFromString(@"UIViewController"),
                                         @"viewControllerValues": @{
                                                 @"title": NSLocalizedString(@"guide.title", @"")
                                                 }
                                         } error:NULL],
             [self modelWithDictionary:@{
                                         @"title": NSLocalizedString(@"menu-item.library", @""),
                                         @"viewControllerClass": NSClassFromString(@"UIViewController"),
                                         @"viewControllerValues": @{
                                                 @"title": NSLocalizedString(@"library.title", @"")
                                                 }
                                         } error:NULL]
             ];
}

- (UINavigationController *)instantiateViewController {
    if (![self.viewControllerClass isSubclassOfClass:[UIViewController class]]) {
        return nil;
    }
    
    UIViewController *viewController = [self.viewControllerClass new];
    viewController.title = self.title;
    
    if (self.viewControllerValues.count) {
        [viewController setValuesForKeysWithDictionary:self.viewControllerValues];
    }
    
    return [[GRNavigationController alloc] initWithRootViewController:viewController];
}

@end
