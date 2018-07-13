//
//  ViewController.m
//  tipCalculator
//
//  Created by Connor Clancy on 7/12/18.
//  Copyright © 2018 codepath. All rights reserved.
//

#import "ViewController.h"
#import "HomeMainView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)loadView {
    self.view = [HomeMainView new];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
