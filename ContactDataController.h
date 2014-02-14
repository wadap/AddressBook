//
//  ContactDataController.h
//  AddressBook
//
//  Created by shuichi.wada on 2/12/14.
//  Copyright (c) 2014 shuichi.wada. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
#import <FMDatabase.h>

@interface ContactDataController : NSObject

+ (FMDatabase *)createDatabase;
+ (void) initTable;
+ (void) insertWithtName:(NSString *)name tel:(NSString *)tel email:(NSString *) email date:(NSDate *) date;
+ (NSMutableArray *) selectContact;

@end
