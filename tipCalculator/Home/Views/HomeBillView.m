//
//  HomeBillView.m
//  tipCalculator
//
//  Created by Connor Clancy on 7/12/18.
//  Copyright © 2018 codepath. All rights reserved.
//

#import "HomeBillView.h"
#import "HomeCalculationView.h"
#import "BTUITools.h"

@implementation HomeBillView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor cyanColor];
        self.translatesAutoresizingMaskIntoConstraints = false;
        [self setUpView];
    }
    return self;
}

- (void) setUpView {
    
    self.billTextField = [UITextField new];
    self.billTextField.placeholder = @"$0.00";
    self.billTextField.textColor = [UIColor whiteColor];
    UIFont *custom80 = [UIFont fontWithName:@"Helvetica Neue" size:80];
    self.billTextField.font = custom80;
    self.billTextField.textAlignment = NSTextAlignmentRight;
    self.billTextField.translatesAutoresizingMaskIntoConstraints = false;
    [self addSubview:self.billTextField];
    
    self.clearButton = [UIButton new];
    [self.clearButton setTitle:@"clear" forState:UIControlStateNormal];
    self.clearButton.translatesAutoresizingMaskIntoConstraints = false;

    [self addSubview:self.clearButton];
    
    NSDictionary *elemsDict = NSDictionaryOfVariableBindings(_billTextField, _clearButton);
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-8@1000-[_clearButton(80)]-[_billTextField]-20-|" options:NSLayoutFormatDirectionLeadingToTrailing metrics:nil views:elemsDict]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-[_clearButton]-|" options:NSLayoutFormatDirectionLeadingToTrailing metrics:nil views:elemsDict]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-[_billTextField]-|" options:NSLayoutFormatDirectionLeadingToTrailing metrics:nil views:elemsDict]];
    
    
}


@end
