//
//  ContactViewController.m
//  AddressBook
//
//  Created by shuichi.wada on 2/10/14.
//  Copyright (c) 2014 shuichi.wada. All rights reserved.
//

#import "ContactViewController.h"
#import "ContactDataController.h"
#import "AddContactViewController.h"
#import "Contact.h"

@interface ContactViewController ()

@end

@implementation ContactViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self refreshData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.contacts count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    NSDictionary *contact = [self.contacts objectAtIndex:indexPath.row];
    NSString *name  = [contact objectForKey:@"name"];
    NSString *email = [contact objectForKey:@"email"];
    [[cell textLabel] setText:name];
    [[cell detailTextLabel] setText:email];
    
    return cell;
}

- (void)done:(UIStoryboardSegue *)segue
{
    if ([[segue identifier] isEqualToString:@"returnInput"]) {

        AddContactViewController *addContactViewController = [segue sourceViewController];
        NSDate *date = [NSDate date];
        
        [ContactDataController initTable];
        [ContactDataController insertWithtName:addContactViewController.name.text
                                           tel:addContactViewController.tel.text
                                         email:addContactViewController.email.text
                                          date:date];
        
        self.contacts = [ContactDataController selectContact];
    }
    [self refreshData];
}

- (void)refreshData
{
    self.contacts = [ContactDataController selectContact];
    [self.tableView reloadData];
}

- (void)cancel:(UIStoryboardSegue *)segue
{
    NSLog(@"cancel");
}

@end
