//
//  friendsCollectionList.m
//  DoWey
//
//  Created by Faris Zaman on 31/07/2017.
//  Copyright © 2017 DoWey. All rights reserved.
//

#import "friendsCollectionList.h"

@implementation friendsCollectionList

-(instancetype)initWithIndex:(NSUInteger)index{
    self = [super init];
    if (self) {
        
        friendsCollectionLibrary *friendsLibrary = [[friendsCollectionLibrary alloc]init];
        NSArray *library = friendsLibrary.library;
        
        NSDictionary *friendsDictionary = library[index];
        
        _friendsCollectionIcon = [friendsDictionary objectForKey:kFriendsCollectionIcon];
        _friendsEventTitle = [friendsDictionary objectForKey:kFriendsEventTitle];
        _friendsEventPrice = [friendsDictionary objectForKey:kFriendsEventPrice];
        _friendsEventIcon = [friendsDictionary objectForKey:kFriendsEventIcon];
    }
    return self;
}

@end
