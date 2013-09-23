//
//  Stack.m
//  Calculator
//
//  Created by pat on 13.09.2013.
//  Copyright (c) 2013 zuehlke. All rights reserved.
//

#import "Stack.h"


@interface Stack ()

@property (strong) NSMutableArray* array;

@end


@implementation Stack

- (id)init {
    self = [super init];
    if (self) {
        // Initialize self.
        self.array = [[NSMutableArray alloc] init];
    }
    return self;
}

- (BOOL) isEmpty
{
    /*
    return [self.array count] == 0;
     */
    return true;
}

- (void) push:(id) item
{
    /*
    [self.array addObject:item];
     */
}

- (id) pop
{
    /*
    if ([self isEmpty]) {
        
        return nil;
        
    }
    else {

        id item = [self.array objectAtIndex:[self.array count] - 1];
        [self.array removeLastObject];
        return item;

    }
     */
    return nil;
}

- (NSInteger) size
{
    //return [self.array count];
    return 0;
}

- (NSArray*) arrayFromStack
{
    //return self.array;
    return nil;
}

@end
