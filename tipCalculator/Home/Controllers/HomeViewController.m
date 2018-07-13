//
//  HomeViewController.m
//  tipCalculator
//
//  Created by Connor Clancy on 7/13/18.
//  Copyright © 2018 codepath. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeMainView.h"
#import "HomeCalculationView.h"
#import "HomeBillView.h"
#import "HomePartySizeView.h"


@interface HomeViewController ()
@property UIView *mainView;
@property UIView *calculationView;
@property UIView *partySizeView;
@property UIView *billView;
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.mainView = [HomeMainView new];
    self.calculationView = [HomeCalculationView new];
    self.partySizeView = [HomePartySizeView new];
    self.billView = [HomeBillView new];
    self.view = self.mainView;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) updateTotalBillField {
    
}

- (void) updateTip {
}

@end
