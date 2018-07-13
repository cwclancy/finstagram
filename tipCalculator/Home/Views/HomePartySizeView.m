//
//  HomePartySizeView.m
//  tipCalculator
//
//  Created by Connor Clancy on 7/12/18.
//  Copyright © 2018 codepath. All rights reserved.
//

#import "HomePartySizeView.h"
#import "BTUITools.h"

@interface HomePartySizeView ()
@end

@implementation HomePartySizeView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor blueColor];
        [self setUpView];
    }
    return self;
}

- (void) setUpView {
    NSArray *partyArray = [NSArray arrayWithObjects: @"1", @"2", @"3", @"4", @"5", nil];
    self.partySegmentedControl = [[UISegmentedControl alloc] initWithItems:partyArray];
    self.partySegmentedControl.translatesAutoresizingMaskIntoConstraints = false;
    
    self.splitLabel = [BTUITools BTCreateLabel:@"$0.00" withFont:@"Helvetica Neue" withSize:40 withColor:[UIColor whiteColor]];
    self.splitLabel.textAlignment = NSTextAlignmentCenter;
    
    UILabel *sizeOfPartyLabel = [BTUITools BTCreateLabel:@"Size of Party" withFont:@"Helvetica Neue" withSize:40 withColor:[UIColor whiteColor]];
    sizeOfPartyLabel.textAlignment = NSTextAlignmentCenter;
    
    [self addSubview:self.partySegmentedControl];
    [self addSubview:self.splitLabel];
    [self addSubview:sizeOfPartyLabel];
    
    NSDictionary *elemsDict = NSDictionaryOfVariableBindings(_partySegmentedControl, _splitLabel, sizeOfPartyLabel);
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-[sizeOfPartyLabel(75)]-[_splitLabel(100)]-[_partySegmentedControl(30)]-25-|" options:NSLayoutFormatDirectionLeadingToTrailing metrics:nil views:elemsDict]];
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[sizeOfPartyLabel]-|" options:NSLayoutFormatDirectionLeadingToTrailing metrics:nil views:elemsDict]];
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[_splitLabel]-|" options:NSLayoutFormatDirectionLeadingToTrailing metrics:nil views:elemsDict]];
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[_partySegmentedControl]-|" options:NSLayoutFormatDirectionLeadingToTrailing metrics:nil views:elemsDict]];
    
    
}
@end
