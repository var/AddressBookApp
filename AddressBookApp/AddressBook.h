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

- (AddressCard*)findWithName;
- (id)initWithSize;
- (AddressBook*)adressBookWithSize:(int)size;
- (void)findAndDisplayWithName;
- (void)removeWithName;
- (void)sort;
- (void)printAll;
- (void)dealloc;

@end
