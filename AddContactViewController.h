//
//  AddContactViewController.h
//  AddressBook
//
//  Created by shuichi.wada on 2/10/14.
//  Copyright (c) 2014 shuichi.wada. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddContactViewController : UITableViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *tel;
@property (weak, nonatomic) IBOutlet UITextField *email;

@end
