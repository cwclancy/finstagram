//
//  HomeMainView.m
//  tipCalculator
//
//  Created by Connor Clancy on 7/12/18.
//  Copyright © 2018 codepath. All rights reserved.
//

#import "HomeMainView.h"
#import "HomeCalculationView.h"
#import "HomeBillView.h"
#import "HomePartySizeView.h"


@interface HomeMainView()

@end

@implementation HomeMainView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        self.translatesAutoresizingMaskIntoConstraints = false;
        [self loadTheView];
    }
    return self;
}

- (void) loadTheView {
    self.calculationView = [HomeCalculationView new];
    self.calculationView.translatesAutoresizingMaskIntoConstraints = false;
    self.partySizeView = [HomePartySizeView new];
    self.partySizeView.translatesAutoresizingMaskIntoConstraints = false;
    self.billView = [HomeBillView new];
    self.billView.translatesAutoresizingMaskIntoConstraints = false;

    
    [self addSubview:self.calculationView];
    [self addSubview:self.partySizeView];
    [self addSubview:self.billView];
    
    NSDictionary *elemsDict = NSDictionaryOfVariableBindings(_calculationView, _partySizeView, _billView);
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_billView(225)]-2-[_calculationView(230)]-2-[_partySizeView]|" options:NSLayoutFormatDirectionLeadingToTrailing metrics:nil views:elemsDict]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_billView]|" options:NSLayoutFormatDirectionLeadingToTrailing metrics:nil views:elemsDict]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_calculationView]|" options:NSLayoutFormatDirectionLeadingToTrailing metrics:nil views:elemsDict]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_partySizeView]|" options:NSLayoutFormatDirectionLeadingToTrailing metrics:nil views:elemsDict]];
    
}

@end
