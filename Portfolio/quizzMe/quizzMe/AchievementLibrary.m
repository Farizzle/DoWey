//
//  AchievementLibrary.m
//  quizzMe
//
//  Created by Faris Zaman on 26/05/2017.
//  Copyright © 2017 --. All rights reserved.
//

#import "AchievementLibrary.h"

NSString *const kTitle = @"title";
NSString *const kDescription = @"description";
NSString *const kIcon = @"icon";
NSString *const kLargeIcon = @"largeIcon";

@implementation AchievementLibrary

- (instancetype) init
{
    self = [super init];
    if (self) {
        _library        = @[ @{kTitle: @"Profile Maker",
                               kDescription: @"Log in using your Facebook profile",
                               kIcon: @"student.png",
                               kLargeIcon: @"student.png"},
                             
                             @{kTitle: @"Recruiter",
                               kDescription: @"Invite your Facebook friends to challenge you!",
                               kIcon: @"team.png",
                               kLargeIcon: @"team.png"},
                             
                             @{kTitle: @"Junior Animal Researcher",
                               kDescription: @"Complete the study guide for key stage 1 animals",
                               kIcon: @"library.png",
                               kLargeIcon: @"library.png"},
                             
                             @{kTitle: @"Junior Animal Expert",
                               kDescription: @"Complete the quiz for key stage 1 animals",
                               kIcon: @"brain.png",
                               kLargeIcon: @"brain.png"}
                                 ];
    }
    return self;
}

@end
