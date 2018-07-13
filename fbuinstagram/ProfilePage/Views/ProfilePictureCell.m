//
//  ProfilePictureCell.m
//  fbuinstagram
//
//  Created by Connor Clancy on 7/10/18.
//  Copyright © 2018 codepath. All rights reserved.
//

#import "ProfilePictureCell.h"

@implementation ProfilePictureCell
-(void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setPost:(Post *)post {
    self.pictureImageView.file = post.image;
    [self.pictureImageView loadInBackground];
}
@end
