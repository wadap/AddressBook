//
//  AddContactViewController.m
//  AddressBook
//
//  Created by shuichi.wada on 2/10/14.
//  Copyright (c) 2014 shuichi.wada. All rights reserved.
//

#import "AddContactViewController.h"

@interface AddContactViewController ()

@end

@implementation AddContactViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField == self.name || textField == self.tel || textField == self.email) {
        [textField resignFirstResponder];
    }
    return YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
