//
//  NSObjectCoderTests.m
//  NSObjectCoderTests
//
//  Created by EricYang on 26/04/2015.
//  Copyright (c) 2015 EricYang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSObjectExample.h"

@interface NSObjectCoderTests : XCTestCase

@end

@implementation NSObjectCoderTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.

}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

#pragma mark - Test with NSObjectCoder
- (void)testNSObjectCoder{
    
    NSObjectExample *exampleBefore = [[NSObjectExample alloc] init];
    exampleBefore.createdTime = [[NSDate alloc] init];
    exampleBefore.text = @"Test text";
    NSLog(@"time before: %@", exampleBefore.createdTime);

    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:exampleBefore];
    
    NSObjectExample *exampleAfter = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    
    XCTAssertNotEqual(exampleBefore.createdTime, exampleAfter.createdTime);
    XCTAssertNotEqual(exampleBefore.text, exampleAfter.text);
    NSLog(@"time after: %@", exampleAfter.createdTime);
}

@end
