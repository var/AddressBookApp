//
//  AddressCard.h
//  AddressBookApp
//
//  Created by Vimal Atreya Ramaka on 2015-02-01.
//  Copyright (c) 2015 Vimal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject

// getter methods are just named after the ivar
// to match obj-c's naming convention

- (NSString*)email;
- (NSString*)phone;
- (NSString*)name;

- (void)setEmail;
- (void)setPhone;
- (void)setName;

@end
