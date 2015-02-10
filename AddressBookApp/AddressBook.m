//
//  AddressBook.m
//  AddressBookApp
//
//  Created by Vimal Atreya Ramaka on 2015-02-01.
//  Copyright (c) 2015 Vimal. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook {
    NSMutableArray* cards;
    NSNumber* bookLen;
}

- (id) init{
    if ([super init]){
        cards = [[NSMutableArray alloc] initWithCapacity:20];
        return self;
    }
    else
        return nil;
}

- (AddressCard*) findWithName:(NSString*)name{
    for (NSInteger i = 0; i < [cards count]; i++){
        if ([name isEqualTo:[[cards objectAtIndex:i] name]]){
            return [cards objectAtIndex:i];
        }
    }
    return nil;
}

- (void) findAndDisplayWithName:(NSString*)name{
    AddressCard* c = [self findWithName:name];
    NSLog(@"%@ %@ %@", c.name, c.email, c.phone);
    
}

- (void) removeWithName:(NSString*)name{
    [cards removeObject:[self findWithName:name]];
}

- (void) sort{
    
}

- (id) initWithSize:(NSInteger)size{
    if ([super init]){
        
        cards = [[NSMutableArray alloc] initWithCapacity:size];
        return self;
    }
    else
        return nil;
}

+ (AddressBook*)adressBookWithSize:(NSInteger)size{
    return [[self alloc] initWithSize:size];
}

- (void)dealloc{
    NSLog(@"dealloc \n");
}

- (void)addWithName:(NSString*)name EmailAddress:(NSString*)email PhoneNumber:(NSString*)phone{
    [cards addObject:[AddressCard addressCardWithName:name EmailAddress:email PhoneNumber:phone]];
}

- (void)printAll{

    for (NSInteger i = 0; i < [cards count]; i++){
        NSLog(@"%@: %@ - %@\n", [[cards objectAtIndex:i] name], [[cards objectAtIndex:i] email], [[cards objectAtIndex:i] phone]);
    }
}


@end
