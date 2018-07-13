//
//  HomeCalculationView.h
//  tipCalculator
//
//  Created by Connor Clancy on 7/12/18.
//  Copyright © 2018 codepath. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeCalculationView : UIView
@property (strong, nonatomic) UILabel *totalLabel;
@property (strong, nonatomic) UISegmentedControl *percentSegmentControl;
@property (strong, nonatomic) UILabel *tipLabel;
@property (strong, nonatomic) UILabel *plusLabel;
@property (strong, nonatomic) UIView *lineView;
@end
