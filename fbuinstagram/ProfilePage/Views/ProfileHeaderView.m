//
//  ProfileHeaderView.m
//  fbuinstagram
//
//  Created by Connor Clancy on 7/10/18.
//  Copyright © 2018 codepath. All rights reserved.
//

#import "ProfileHeaderView.h"

@implementation ProfileHeaderView
- (void)awakeFromNib {
    [super awakeFromNib];
    self.profileImageView.layer.cornerRadius = self.profileImageView.frame.size.width / 2;
    self.profileImageView.clipsToBounds = YES;
}
@end
