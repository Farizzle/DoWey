//
//  RegistrationPage.h
//  DoWey
//
//  Created by Faris Zaman on 13/07/2017.
//  Copyright © 2017 DoWey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKCoreKit/FBSDKProfile.h>

@interface RegistrationPage : UIViewController <FBSDKLoginButtonDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *backGround;

@property (weak, nonatomic) IBOutlet UILabel *additionalInfo;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;


//FBSDK properties
@property (strong, nonatomic) IBOutlet FBSDKLoginButton *loginButton;
@property (weak, nonatomic) IBOutlet UILabel *lblUsername;
@property (weak, nonatomic) IBOutlet UILabel *lblEmail;
@property (strong, nonatomic) IBOutlet FBSDKProfilePictureView *profilePicture;

- (IBAction)handleSwipe:(UISwipeGestureRecognizer*)sender;

@end
