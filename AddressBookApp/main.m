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
    
    }
    return 0;
}
