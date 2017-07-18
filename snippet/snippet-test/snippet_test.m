//
//  snippet_test.m
//  snippet-test
//
//  Created by 乔月 on 2017/7/18.
//  Copyright © 2017年 wings. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "WXXNSString.h"

@interface snippet_test : XCTestCase

@end

@implementation snippet_test

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    NSString *str = @"This is an example of a \nfunctional test case.";
    NSLog(@"%@", [str wxx_split:nil]);
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
