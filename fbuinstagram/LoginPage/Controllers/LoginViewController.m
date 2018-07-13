//
//  LoginViewController.m
//  fbuinstagram
//
//  Created by Connor Clancy on 7/9/18.
//  Copyright © 2018 codepath. All rights reserved.
//

#import "LoginViewController.h"
#import "Parse.h"

@interface LoginViewController ()
@property (strong, nonatomic) IBOutlet UITextField *usernameField;
@property (strong, nonatomic) IBOutlet UITextField *passwordField;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}






/*********************
    SEGUE
**********************/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)signUpPressed:(id)sender {
    [self registerUser];
}


- (IBAction)loginPressed:(id)sender {
    [self loginUser];
}


/*********************
    USERS
 **********************/

-(void)registerUser {
    PFUser *user = [PFUser user];
    user.username = self.usernameField.text;
    user.password = self.passwordField.text;
    if ([self.usernameField.text isEqual: @""] || [self.passwordField.text isEqual: @""]) {
        [self emptyAlert];
    } else {
        [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError * _Nullable error) {
            if (error) {
                NSLog(@"%@", error);
            } else {
                [self performSegueWithIdentifier:@"loginSegue" sender:nil] ;
            }
        }];
    }
}

-(void)loginUser {
    NSString *username = self.usernameField.text;
    NSString *password = self.passwordField.text;
    if ([username  isEqual: @""] || [password  isEqual: @""]) {
        [self emptyAlert];
    } else {
        [PFUser logInWithUsernameInBackground:username password:password block:^(PFUser * _Nullable user, NSError * _Nullable error) {
            if (error) {
                NSLog(@"%@", error);
            } else {
                [self performSegueWithIdentifier:@"loginSegue" sender:nil] ;
            }
        }];
    }
}

-(void)emptyAlert {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Error" message:@"fill out required fields"
        preferredStyle:(UIAlertControllerStyleAlert)];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel"
    style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {

    }];
    [alert addAction:cancelAction];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    }];
    [alert addAction:okAction];
    [self presentViewController:alert animated:YES completion:^{

    }];
}



@end
