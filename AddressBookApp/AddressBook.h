//
//  AddressBook.h
//  AddressBookApp
//
//  Created by Vimal Atreya Ramaka on 2015-02-01.
//  Copyright (c) 2015 Vimal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook : NSObject

- (AddressCard*)findWithName:(NSString*)name;
- (id)initWithSize:(NSInteger)size;
+ (AddressBook*)adressBookWithSize:(NSInteger)size;
- (void)findAndDisplayWithName:(NSString*)name;
- (void)removeWithName:(NSString*)name;
- (void)addWithName:(NSString*)name EmailAddress:(NSString*)email PhoneNumber:(NSString*)phone;
- (void)sort;
- (void)printAll;
- (void)dealloc;

@end
