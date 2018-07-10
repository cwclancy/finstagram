//
//  PostEditViewController.m
//  fbuinstagram
//
//  Created by Connor Clancy on 7/9/18.
//  Copyright © 2018 codepath. All rights reserved.
//

#import "PostEditViewController.h"
#import "Post.h"

@interface PostEditViewController ()

@end

@implementation PostEditViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.postImage.image = self.post;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)postButtonPressed:(id)sender {
    [Post postUserImage:self.postImage.image withCaption:self.postCommentField.text withCompletion:^(BOOL succeeded, NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error);
        } else {
            NSLog(@"posted");
            // segue to home and update please
        }
    }];
}

- (IBAction)screenTapped:(id)sender {
    [self.postCommentField resignFirstResponder];
}


@end
