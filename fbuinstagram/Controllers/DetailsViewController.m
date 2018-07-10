//
//  DetailsViewController.m
//  fbuinstagram
//
//  Created by Connor Clancy on 7/10/18.
//  Copyright © 2018 codepath. All rights reserved.
//

#import "DetailsViewController.h"
#import "ParseUI/ParseUI.h"

@interface DetailsViewController ()
@property (strong, nonatomic) IBOutlet PFImageView *imageView;
@property (strong, nonatomic) IBOutlet UILabel *likesLabel;
@property (strong, nonatomic) IBOutlet UILabel *captionLabel;
@property (strong, nonatomic) IBOutlet UIImageView *profileImageView;

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.imageView.file = self.post.image;
    [self.imageView loadInBackground];
    self.captionLabel.text = self.post.caption;
    self.profileImageView.layer.cornerRadius = self.profileImageView.frame.size.width / 2;
    self.profileImageView.clipsToBounds = YES;
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

@end
