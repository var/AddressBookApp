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
        self.name = n;
        self.email = e;
        self.phone = p;
        
        return self;
    }
    else
        return nil;
}

+(AddressCard *)addressCardWithName:(NSString *)name EmailAddress:(NSString *)email PhoneNumber:(NSString *)phone{
    return [[self alloc] initWithName:name EmailAddress:email PhoneNumber:phone];
}

- (void)dealloc{
    NSLog(@"dealloc %@ \n", name);
}

- (BOOL)compareByName:(AddressCard*)anotherCard{
    if ([name isEqualToString:anotherCard.name]){
        return YES;
    }
    else
        return NO;
}

- (void)compare:(AddressCard*)anotherCard{
    if ([name isEqualToString:anotherCard.name]){
        NSLog(@"both cards have the same name %@ \n", anotherCard.name);
    }
    else
        NSLog(@"the cards doesnt have the same names, they are: %@ and %@ \n", name, anotherCard.name);
    
    
    if ([email isEqualToString:anotherCard.email]){
        NSLog(@"both cards have the same email %@ \n", anotherCard.email);
    }
    else
        NSLog(@"the cards doesnt have the same emails, they are: %@ and %@ \n", email, anotherCard.email);
    
    if ([phone isEqualToString:anotherCard.phone]){
        NSLog(@"both cards have the same phone # %@", anotherCard.phone);
    }
    else
        NSLog(@"the cards doesnt have the same phone #s, they are: %@ and %@", phone, anotherCard.phone);
}

- (void)print {
    NSLog(@"Name: %@, Email: %@, Phone: %@", name, email, phone);
}


@end
