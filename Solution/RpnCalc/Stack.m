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
    return [self.array count] == 0;
}

- (void) push:(NSNumber*) item
{
    [self.array addObject:item];
}

- (NSNumber*) pop
{
    if ([self isEmpty]) {
        
        return nil;
        
    }
    else {
        id item = [self.array objectAtIndex:[self.array count] - 1];
        [self.array removeLastObject];
        return item;
    }
}

- (void) reset{
    [self.array removeAllObjects];
}

- (NSInteger) size
{
    return [self.array count];
}

- (NSArray*) arrayFromStack
{
    return self.array;
}

@end
