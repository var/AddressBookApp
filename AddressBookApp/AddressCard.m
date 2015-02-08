//
//  AddressCard.m
//  AddressBookApp
//
//  Created by Vimal Atreya Ramaka on 2015-02-01.
//  Copyright (c) 2015 Vimal. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard {
    // ivars are declared in .m as it is "better"
    NSString *name, *email, *phone;
}

@synthesize name, email, phone;

- (id) init{
    return self;
}

- (id) initWithName:(NSString *)name EmailAddress:(NSString *)email PhoneNumber:(NSString *)phone{
    return self;
}

+(AddressCard *)addressCardWithName:(NSString *)name EmailAddress:(NSString *)email PhoneNumber:(NSString *)phone{
    return nil;
}

- (void)dealloc{
    printf("just a message");
}

- (BOOL)compareByName{
    return YES;
}

- (void)print {
    printf("todo");
}


@end
