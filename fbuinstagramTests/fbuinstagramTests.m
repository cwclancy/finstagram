//
//  fbuinstagramTests.m
//  fbuinstagramTests
//
//  Created by Connor Clancy on 7/9/18.
//  Copyright © 2018 codepath. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "HomeViewController.h"
#import "Post.h"
#import "LoginViewController.h"

// Classes To Test

@interface HomeViewController (Testing)
- (void)fetchPosts;
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray *posts;
@property (strong, nonatomic) UIRefreshControl *refreshControl;
@end

@interface LoginViewController (Testing)
@property (strong, nonatomic) IBOutlet UITextField *usernameField;
@property (strong, nonatomic) IBOutlet UITextField *passwordField;
-(void)registerUser;
-(void)loginUser;
@end





@interface fbuinstagramTests : XCTestCase
@property HomeViewController *homeViewController;
@property LoginViewController *loginViewController;
@end

@implementation fbuinstagramTests

- (void)setUp {
    [super setUp];
    self.homeViewController = [HomeViewController new];
    self.loginViewController = [LoginViewController new];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

-(void)testPostFetch {
    // check exactly 20 posts are grabbed
    [self.homeViewController fetchPosts];
    XCTestExpectation *expectation = [self expectationWithDescription:@"asynchronous request"];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(12.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        // Call Populates The Array
        XCTAssert(self.homeViewController.posts.count > 0, @"Data source has populated array after initializing and, you know, giving it some time to breath, man.");
        // Newest Post At Index 0
        Post *first = self.homeViewController.posts[0];
        Post *last = self.homeViewController.posts[self.homeViewController.posts.count-1];
        NSDate *first_date = first.createdAt;
        NSDate *last_date = last.createdAt;
        XCTAssert([first_date timeIntervalSinceDate:last_date] > 0);
        [expectation fulfill];
    });
    [self waitForExpectationsWithTimeout:20.0 handler:nil];
}

-(void)testLoginUser {
    XCTestExpectation *expectation = [self expectationWithDescription:@"user login asyc"];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        [expectation fulfill];
    });
    [self waitForExpectationsWithTimeout:20.0 handler:nil];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
        [self.homeViewController fetchPosts];
    }];
}

@end
