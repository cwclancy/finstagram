//
//  PostCell.m
//  fbuinstagram
//
//  Created by Connor Clancy on 7/9/18.
//  Copyright © 2018 codepath. All rights reserved.
//

#import "PostCell.h"

#import <UIKit/UIKit.h>
#import "Parse.h"

@implementation PostCell


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.profilePicture.layer.cornerRadius = self.profilePicture.frame.size.width / 2;
    self.profilePicture.clipsToBounds = YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setPost:(Post *)post {
    _post = post;
    self.postImage.file = post.image;
    [self.postImage loadInBackground];
    self.captionLabel.text = post.caption;
    
    
    
}

@end
