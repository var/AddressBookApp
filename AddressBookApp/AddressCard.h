//
//  AddressCard.h
//  AddressBookApp
//
//  Created by Vimal Atreya Ramaka on 2015-02-01.
//  Copyright (c) 2015 Vimal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject

@property NSString *name, *email, *phone;


- (id) init;
+ (AddressCard*)addressCardWithName:(NSString*)name EmailAddress:(NSString*)email PhoneNumber:(NSString*)phone;
- (id)initWithName:(NSString*)name EmailAddress:(NSString*)email PhoneNumber:(NSString*)phone;
- (BOOL)compareByName:(AddressCard*)anotherCard;
- (void)print;
- (void)dealloc;


@end
