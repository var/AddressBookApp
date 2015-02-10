//
//  main.m
//  AddressBookApp
//
//  Created by Vimal Atreya Ramaka on 2015-02-01.
//  Copyright (c) 2015 Vimal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressBook.h"
#import "AddressCard.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        AddressCard *c = [[AddressCard alloc] init];
        
        [c print];
        
        c.name = @"vimal";
        c.email = @"vimal@ramaka.com";
        c.phone = @"9029029029";
        
        [c print];
        
        
        AddressCard *c2 = [AddressCard addressCardWithName:@"adam" EmailAddress:@"test@live.ca" PhoneNumber:@"9029000000"];
        
        [c2 print];
        
        NSLog(@"c and c2 have the same names: %hhd",[c compareByName:c2]);
        
        [c compare:c2];
        
        AddressBook *a = [AddressBook adressBookWithSize:10];
        
        [a addWithName:@"vimal" EmailAddress:@"vimal@ramaka.com" PhoneNumber:@"9029029029"];
        [a addWithName:@"vimal" EmailAddress:@"vimal@ramaka.com" PhoneNumber:@"9029029029"];
        [a addWithName:@"vimal" EmailAddress:@"vimal@ramaka.com" PhoneNumber:@"9029029029"];
        
        [a printAll];
        
        
    
    }
    return 0;
}
