//
//  ProfilePictureCell.h
//  fbuinstagram
//
//  Created by Connor Clancy on 7/10/18.
//  Copyright © 2018 codepath. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Post.h"
#import <ParseUI/ParseUI.h>

@interface ProfilePictureCell : UICollectionViewCell
@property (strong, nonatomic) IBOutlet PFImageView *pictureImageView;
@property (strong, nonatomic) Post *post;
@end
