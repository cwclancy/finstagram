//
//  HomeCalculationView.m
//  tipCalculator
//
//  Created by Connor Clancy on 7/12/18.
//  Copyright © 2018 codepath. All rights reserved.
//

#import "HomeCalculationView.h"
#import "BTUITools.h"

@interface HomeCalculationView ()
@end

@implementation HomeCalculationView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.translatesAutoresizingMaskIntoConstraints = false;
        self.backgroundColor = [UIColor blueColor];
        [self setUpView];
    }
    return self;
}

- (void) setUpView {
    NSArray *tipPercents = [NSArray arrayWithObjects: @"10%", @"18%", @"20%", nil];
    self.percentSegmentControl = [[UISegmentedControl alloc] initWithItems:tipPercents];
    self.percentSegmentControl.translatesAutoresizingMaskIntoConstraints = false;
    
//    UIFont *custom30 = [UIFont fontWithName:@"Helvetica Neue" size:30];
//    self.tipLabel = [UILabel new];
//    self.tipLabel.text = @"$0.00";
//    self.tipLabel.font = custom30;
//    self.tipLabel.textColor = [UIColor whiteColor];
    
    self.tipLabel = [BTUITools BTCreateLabel:@"0.00" withFont:@"Helvetica Neue" withSize:30 withColor:[UIColor whiteColor]];
    
    self.totalLabel = [BTUITools BTCreateLabel:@"0.00" withFont:@"Helvetica Neue" withSize:50 withColor:[UIColor whiteColor]];
    
    self.plusLabel = [BTUITools BTCreateLabel:@"+" withFont:@"Helvetica Neue" withSize:30 withColor:[UIColor whiteColor]];
    
    UILabel *totalTextLabel = [BTUITools BTCreateLabel:@"total" withFont:@"Helvetica Neue" withSize:30 withColor:[UIColor whiteColor]];
    
    [self addSubview:self.tipLabel];
    [self addSubview:self.totalLabel];
    [self addSubview:self.plusLabel];
    [self addSubview:self.percentSegmentControl];
    [self addSubview:totalTextLabel];
    
    NSDictionary *elemsDict = NSDictionaryOfVariableBindings(_tipLabel, _totalLabel, _plusLabel, _percentSegmentControl, totalTextLabel);
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-20-[_percentSegmentControl]-25@1000-[_plusLabel(40)][_tipLabel(40)]-[_totalLabel(60)][totalTextLabel(60)]-60-|" options:NSLayoutFormatDirectionLeadingToTrailing metrics:nil views:elemsDict]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[_percentSegmentControl]-|" options:NSLayoutFormatDirectionLeadingToTrailing metrics:nil views:elemsDict]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[_plusLabel]-[_tipLabel]-|" options:NSLayoutFormatAlignAllCenterY metrics:nil views:elemsDict]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-8@1000-[totalTextLabel]-100-[_totalLabel]-8@1000-|" options:NSLayoutFormatAlignAllCenterY metrics:nil views:elemsDict]];
    
    
}



@end
