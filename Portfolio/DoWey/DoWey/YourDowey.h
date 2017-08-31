//
//  YourDowey.h
//  DoWey
//
//  Created by Faris Zaman on 16/07/2017.
//  Copyright © 2017 DoWey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FBSDKCoreKit/FBSDKProfile.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import "RegistrationPage.h"

@interface YourDowey : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, FBSDKLoginButtonDelegate>

//CollectionViews
@property (weak, nonatomic) IBOutlet UICollectionView *yourEvents;
@property (weak, nonatomic) IBOutlet UICollectionView *yourCollections;


//yourDowey
@property (weak, nonatomic) IBOutlet UILabel *header;
@property (weak, nonatomic) IBOutlet UIView *changeMoodButton;

//backViews
@property (weak, nonatomic) IBOutlet UIView *InterchangingBackground;
@property (weak, nonatomic) IBOutlet UIView *profileBackground;
@property (weak, nonatomic) IBOutlet UIView *collectionsBackground;

//BottomButtons
@property (weak, nonatomic) IBOutlet UIView *yourDoweyUnderline;
@property (weak, nonatomic) IBOutlet UIView *othersDoweyUnderline;
@property (weak, nonatomic) IBOutlet UIView *profileUnderline;

//Profile Buttons
@property (weak, nonatomic) IBOutlet UIImageView *rewardsButton;
@property (weak, nonatomic) IBOutlet UIImageView *settingsButton;
@property (weak, nonatomic) IBOutlet UIImageView *shareButton;
@property (weak, nonatomic) IBOutlet UIImageView *ticketsButton;
@property (weak, nonatomic) IBOutlet UIImageView *contactUsButton;
@property (weak, nonatomic) IBOutlet UIImageView *messagesButton;


//FaceBook Related
@property (weak, nonatomic) IBOutlet FBSDKProfilePictureView *profilePicture;
@property (weak, nonatomic) IBOutlet UILabel *profileName;


- (IBAction)yourDoweyButton:(id)sender;
- (IBAction)othersDoweyButton:(id)sender;
- (IBAction)profileButton:(id)sender;
- (IBAction)logOut:(id)sender;






@end
