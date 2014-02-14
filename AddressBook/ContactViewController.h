//
//  ContactViewController.h
//  AddressBook
//
//  Created by shuichi.wada on 2/10/14.
//  Copyright (c) 2014 shuichi.wada. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContactViewController : UITableViewController

@property(nonatomic, copy) NSMutableArray *contacts;

- (IBAction)done:(UIStoryboardSegue *)segue;
- (IBAction)cancel:(UIStoryboardSegue *)segue;

- (void)refreshData;

@end
