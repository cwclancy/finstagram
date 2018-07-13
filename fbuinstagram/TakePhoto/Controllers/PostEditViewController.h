//
//  PostEditViewController.h
//  fbuinstagram
//
//  Created by Connor Clancy on 7/9/18.
//  Copyright © 2018 codepath. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PostEditViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *postImage;
@property (strong, nonatomic) IBOutlet UITextView *postCommentField;
@property (strong, nonatomic) IBOutlet UIButton *postButton;
@property (strong, nonatomic) UIImage *post;

@end
