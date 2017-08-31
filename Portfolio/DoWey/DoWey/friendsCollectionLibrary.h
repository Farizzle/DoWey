//
//  friendsCollectionLibrary.h
//  DoWey
//
//  Created by Faris Zaman on 31/07/2017.
//  Copyright © 2017 DoWey. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const kFriendsCollectionIcon;
extern NSString *const kFriendsEventTitle;
extern NSString *const kFriendsEventPrice;
extern NSString *const kFriendsEventIcon;

@interface friendsCollectionLibrary : NSObject

@property (strong, nonatomic) NSArray *library;

@end
