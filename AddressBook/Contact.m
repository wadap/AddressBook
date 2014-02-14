//
//  Contact.m
//  AddressBook
//
//  Created by shuichi.wada on 2/10/14.
//  Copyright (c) 2014 shuichi.wada. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (id)initWithName:(NSString *)name tel:(NSString *)tel email:(NSString *)email date:(NSDate *)date
{
    self = [super init];
    
    if (self) {
        _name  = name;
        _tel   = tel;
        _email = email;
        _date  = date;
        return self;
    }
    return nil;
}

@end
