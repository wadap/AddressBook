//
//  ContactDataController.m
//  AddressBook
//
//  Created by shuichi.wada on 2/12/14.
//  Copyright (c) 2014 shuichi.wada. All rights reserved.
//

#import "ContactDataController.h"
#import <FMDatabase.h>

@implementation ContactDataController

+ (FMDatabase *)createDatabase
{
	NSArray*    paths = NSSearchPathForDirectoriesInDomains( NSDocumentDirectory, NSUserDomainMask, YES);
	NSString*   dir   = [paths objectAtIndex:0];
	return [FMDatabase databaseWithPath:[dir stringByAppendingPathComponent:@"contact.db"]];
}

+ (void)initTable
{
    FMDatabase *db = [self createDatabase];
	NSString *sql  = @"create table if not exists data(id integer primary key,name text, tel text, email text, date date);";
	[db open];
	[db executeUpdate:sql];
	[db close];
}

+ (void)insertWithtName:(NSString *)name tel:(NSString *)tel email:(NSString *)email date:(NSDate *)date
{
    FMDatabase *db = [self createDatabase];
    NSString *sql  = @"INSERT INTO data (name, tel, email, date) VALUES (?, ?, ?, ?)";

    [db open];
    [db executeUpdate:sql, name, tel, email, date];
}

+ (NSMutableArray *)selectContact
{
    FMDatabase *db = [self createDatabase];
    NSString *sql  = @"SELECT name, tel, email, date FROM data;";
    
    [db open];
    FMResultSet *result = [db executeQuery:sql];
    NSMutableArray *contacts = [[NSMutableArray alloc] initWithCapacity:0];

    // ここでDBのセレクト結果を連想配列＋配列に加工して返す
    while ([result next]) {
        NSString *name  = [result stringForColumnIndex:0];
        NSString *tel   = [result stringForColumnIndex:1];
        NSString *email = [result stringForColumnIndex:2];
        
        NSDictionary *dict  = @{
                                 @"name": name,
                                 @"tel": tel,
                                 @"email": email
                                 };
        [contacts addObject:dict];
    }
    
    return contacts;
}

@end