//
//  StackTests.m
//  RpnCalc
//
//  Created by pat on 19.09.2013.
//  Copyright (c) 2013 zuehlke. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Stack.h"


@interface StackTests : XCTestCase

@property (readwrite) Stack* stack;

@end


@implementation StackTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    self.stack = [[Stack alloc] init];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testPushPop
{
    [self.stack push:@1];
    [self.stack push:@2];
    XCTAssert([[self.stack pop] isEqualToNumber:@2]);
    XCTAssert([[self.stack pop] isEqualToNumber:@1]);
    XCTAssert([self.stack isEmpty]);
}

- (void)testEmpty
{
    XCTAssert([self.stack isEmpty]);
    XCTAssert([self.stack pop] == nil);
}

- (void)testSize
{
    XCTAssert([self.stack size] == 0);
    [self.stack push:@1];
    [self.stack push:@2];
    XCTAssert([self.stack size] == 2);
}

- (void)testArray
{
    [self.stack push:@1];
    [self.stack push:@2];
    NSArray* array = @[@1, @2];
    XCTAssert([array isEqualToArray:[self.stack arrayFromStack]]);
}

@end