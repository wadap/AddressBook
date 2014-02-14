//
//  Contact.h
//  AddressBook
//
//  Created by shuichi.wada on 2/10/14.
//  Copyright (c) 2014 shuichi.wada. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *tel;
@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) NSDate *date;

// データの初期化を行う
- (id)initWithName:(NSString *)name tel:(NSString *)tel email:(NSString *) email date:(NSDate *) date;
@end
