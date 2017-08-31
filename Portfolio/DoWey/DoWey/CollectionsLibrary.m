//
//  CollectionsLibrary.m
//  DoWey
//
//  Created by Faris Zaman on 31/07/2017.
//  Copyright © 2017 DoWey. All rights reserved.
//

#import "CollectionsLibrary.h"

NSString *const kCollectionTitle = @"collectionTitle";
NSString *const kCollectionIcon = @"collectionIcon";

@implementation CollectionsLibrary

-(instancetype) init{
    self = [super init];
    if (self) {
        _library        =   @[      @{   kCollectionTitle:@"Get Romantic",
                                         kCollectionIcon:@"getRomantic.png"},
                                    
                                    @{   kGroupTitle:@"Party Hard",
                                         kGroupIcon:@"partyHard.png"},
                                    
                                    @{   kGroupTitle:@"friends",
                                         kGroupIcon:@"friends.png"}
                                    ];
    }
    return self;
}

@end
