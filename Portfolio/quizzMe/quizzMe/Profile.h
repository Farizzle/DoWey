//
//  Profile.h
//  quizzMe
//
//  Created by Faris Zaman on 29/04/2017.
//  Copyright © 2017 --. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import "SWRevealViewController.h"

@interface Profile : UIViewController <FBSDKLoginButtonDelegate>

@property (weak, nonatomic) IBOutlet FBSDKLoginButton *loginButton;
@property (weak, nonatomic) IBOutlet UILabel *lblLoginStatus;
@property (weak, nonatomic) IBOutlet UILabel *lblUsername;
@property (weak, nonatomic) IBOutlet UILabel *lblEmail;
@property (weak, nonatomic) IBOutlet FBSDKProfilePictureView *profilePicture;
@property (weak, nonatomic) IBOutlet UIButton *goBack;


-(void)toggleHiddenState:(BOOL)shouldHide;

@end
