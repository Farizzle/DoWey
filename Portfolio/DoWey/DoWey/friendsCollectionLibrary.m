//
//  friendsCollectionLibrary.m
//  DoWey
//
//  Created by Faris Zaman on 31/07/2017.
//  Copyright © 2017 DoWey. All rights reserved.
//

#import "friendsCollectionLibrary.h"

NSString *const kFriendsCollectionIcon = @"collectionIcon";
NSString *const kFriendsEventTitle = @"eventTitle";
NSString *const kFriendsEventPrice = @"eventPrice";
NSString *const kFriendsEventIcon = @"eventIcon";

@implementation friendsCollectionLibrary

-(instancetype) init{
    self = [super init];
    if (self) {
        _library        =   @[      @{ kFriendsCollectionIcon:@"friends.png",
                                       kFriendsEventTitle:@[@"Wekiwa Springs", @"Kings Bowling", @"Pirate's Cove Mini Golf"],
                                       kFriendsEventPrice:@[@"5", @"10", @"15"],
                                       kFriendsEventIcon:@[@"Wekiva.png",@"KingsBowling.png",@"PirateGolf.png"]
                                    }
                             ];
    }
    return self;
}

@end
