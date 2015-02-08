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

- (id) initWithName:(NSString *)n EmailAddress:(NSString *)e PhoneNumber:(NSString *)p{
    if ([super init]){
        name = n;
        email = e;
        phone = p;
        
        return self;
    }
    else
        return nil;
}

+(AddressCard *)addressCardWithName:(NSString *)name EmailAddress:(NSString *)email PhoneNumber:(NSString *)phone{
    return [[self alloc] initWithName:name EmailAddress:email PhoneNumber:phone];
}

- (void)dealloc{
    printf("dealloc \n");
}

- (BOOL)compareByName:(AddressCard*)anotherCard{
    
    return YES;
}

- (void)print {
    NSLog(@"Name: %@, Email: %@, Phone: %@", name, email, phone);
}


@end
