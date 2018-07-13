//
//  fbuinstagramUITests.m
//  fbuinstagramUITests
//
//  Created by Connor Clancy on 7/9/18.
//  Copyright © 2018 codepath. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface fbuinstagramUITests : XCTestCase

@end

@implementation fbuinstagramUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


- (void)testLoginWithValidCredentials {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.textFields[@"username"] tap];
    [app.textFields[@"username"] typeText:@"Connor"];
    [app.textFields[@"password"] tap];
    [app.textFields[@"password"] typeText:@"Clancy"];
    [app.buttons[@"Login"] tap];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        XCTAssert([app.tables[@"tableView"] exists]);
    });
}

- (void)testLoginWithEmptyUsername {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.textFields[@"username"] tap];
    [app.textFields[@"username"] typeText:@""];
    [app.textFields[@"password"] tap];
    [app.textFields[@"password"] typeText:@"Clancy"];
    [app.buttons[@"Login"] tap];
    XCTAssert([app.alerts[@"Error"] exists]);
}

- (void)testLoginWithEmptyPassword {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.textFields[@"username"] tap];
    [app.textFields[@"username"] typeText:@"Connor"];
    [app.textFields[@"password"] tap];
    [app.textFields[@"password"] typeText:@""];
    [app.buttons[@"Login"] tap];
    XCTAssert([app.alerts[@"Error"] exists]);
}

- (void)testLoginWithInvalidCredentials {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.textFields[@"username"] tap];
    [app.textFields[@"username"] typeText:@"Whats"];
    [app.textFields[@"password"] tap];
    [app.textFields[@"password"] typeText:@"Good"];
    [app.buttons[@"Login"] tap];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        XCTAssert(![app.tables[@"tableView"] exists]);
    });
  
    
    
}





@end
