//
//  FriendsInvite.h
//  quizzMe
//
//  Created by Faris Zaman on 22/05/2017.
//  Copyright © 2017 --. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FBSDKShareKit/FBSDKShareKit.h>
#import <FBSDKShareKit/FBSDKAppInviteDialog.h>
#import <FBSDKShareKit/FBSDKAppInviteContent.h>

@interface FriendsInvite : UIViewController <FBSDKAppInviteDialogDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *inviteTemplate;
@property (weak, nonatomic) IBOutlet UIButton *inviteFriendsButton;
@property (weak, nonatomic) IBOutlet UIButton *goBack;

- (IBAction)inviteFriends:(id)sender;

@end
