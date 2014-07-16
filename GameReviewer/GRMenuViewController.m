//
//  GRMenuViewController.m
//  GameReviewer
//
//  Created by sergio on 15/07/14.
//  Copyright (c) 2014 SOM. All rights reserved.
//

#import "GRMenuViewController.h"
#import "GRMenuItem.h"
#import "GRMenuItemCell.h"

#import <TGRDataSource/TGRArrayDataSource.h>

@interface GRMenuViewController () <UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIButton *signOutButton;

@property (strong, nonatomic) TGRArrayDataSource *dataSource;
@property (strong, nonatomic) NSIndexPath *selectedItemIndexPath;

@end

@implementation GRMenuViewController

- (UINavigationController *)instantiateViewControllerForSelectedMenuItem {
    GRMenuItem *menuItem = [self.dataSource itemAtIndexPath:self.selectedItemIndexPath];
    return [menuItem instantiateViewController];
}

#pragma mark - Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];

}

#pragma mark - Table View Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

#pragma mark - Actions

- (IBAction)signOut:(id)sender {
   
}

#pragma mark - Private properties

- (TGRArrayDataSource *)dataSource {
    if (!_dataSource) {
        NSArray *menuItems = [GRMenuItem menuItems];
        
        _dataSource = [[TGRArrayDataSource alloc] initWithItems:menuItems
                                            cellReuseIdentifier:[GRMenuItemCell reuseIdentifier]
                                             configureCellBlock:^(GRMenuItemCell *cell, GRMenuItem *item) {
                                                 [cell configureWithMenuItem:item];
                                             }];
    }
    
    return _dataSource;
}

- (NSIndexPath *)selectedItemIndexPath {
    if (!_selectedItemIndexPath) {
        _selectedItemIndexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    }
    
    return _selectedItemIndexPath;
}

@end
