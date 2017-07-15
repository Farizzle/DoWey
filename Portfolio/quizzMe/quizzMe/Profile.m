//
//  Profile.m
//  quizzMe
//
//  Created by Faris Zaman on 29/04/2017.
//  Copyright © 2017 --. All rights reserved.
//

#import "Profile.h"
#import <FBSDKCoreKit/FBSDKProfile.h>
#import <QuartzCore/QuartzCore.h>

@interface Profile ()

@end

@implementation Profile

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBar.hidden = NO;
    self.navigationController.interactivePopGestureRecognizer.enabled = self;
    
    // Delegate of the of the log-in view
    self.loginButton.delegate = self;
    
    // Check for existing userID token
    if ([FBSDKAccessToken currentAccessToken]) {
    }
    
    // Create and initiate a facebook log-in button.
    FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc]init];
    
    // Check for permission
    loginButton.readPermissions = @[@"public_profile", @"email", @"user_friends"];
    
    // Hide initial properties untill log-in is determined
    [self toggleHiddenState:YES];
    self.lblLoginStatus.text = @"";
    
    // Rounded edges of return button
    _goBack.layer.cornerRadius = 2.5;
    _goBack.clipsToBounds = YES;
    
    // Round edges of profile image
    _profilePicture.layer.cornerRadius = 15;
    _profilePicture.clipsToBounds = YES;
    
    // Do any additional setup after loading the view.
}

// Display lblStatus as logged out once completed.
- (void)loginButtonDidLogOut:(FBSDKLoginButton *)loginButton{
        self.lblLoginStatus.text = @"You are logged out";
    [self toggleHiddenState:YES];
    }

- (void)loginButton:(FBSDKLoginButton *)loginButton didCompleteWithResult:(FBSDKLoginManagerLoginResult *)result error:(NSError *)error{
    NSMutableDictionary* parameters = [NSMutableDictionary dictionary];
    [parameters setValue:@"id,name,email" forKey:@"fields"];
    
    [[[FBSDKGraphRequest alloc] initWithGraphPath:@"me" parameters:parameters] startWithCompletionHandler:^(FBSDKGraphRequestConnection *connection, id result, NSError *error) {
        _lblUsername.text = [result valueForKey:@"name"];
        _lblEmail.text = [result valueForKey:@"email"];
    }];
    _lblLoginStatus.text = @"You are logged in";
    [self toggleHiddenState:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)toggleHiddenState:(BOOL)shouldHide{
    self.lblUsername.hidden = shouldHide;
    self.lblEmail.hidden = shouldHide;
    self.profilePicture.hidden = shouldHide;
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
