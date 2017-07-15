//
//  FriendsInvite.m
//  quizzMe
//
//  Created by Faris Zaman on 22/05/2017.
//  Copyright © 2017 --. All rights reserved.
//

#import "FriendsInvite.h"
#import <QuartzCore/QuartzCore.h>

@interface FriendsInvite ()

@end

@implementation FriendsInvite

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Customisation of the invitation image
    [_inviteTemplate setImage:[UIImage imageNamed:@"Invite your friends.png"]];
    _inviteTemplate.layer.cornerRadius = 50;
    _inviteTemplate.clipsToBounds = YES;
    
    // Customisation of the goback button
    _goBack.layer.cornerRadius = 2.5;
    _goBack.clipsToBounds = YES;
    
    // Do any additional setup after loading the view.
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

- (void)appInviteDialog:(FBSDKAppInviteDialog *)appInviteDialog didFailWithError:(NSError *)error{
    
}

- (void)appInviteDialog:(FBSDKAppInviteDialog *)appInviteDialog didCompleteWithResults:(NSDictionary *)results{
    
}

    // Login methodology
- (IBAction)inviteFriends:(id)sender {
    FBSDKAppInviteContent *content = [[FBSDKAppInviteContent alloc]init];
    content.appLinkURL = [NSURL URLWithString:@"https://fb.me/248123462333241"];
    
    [FBSDKAppInviteDialog showFromViewController:self withContent:content delegate:self];
}
@end
