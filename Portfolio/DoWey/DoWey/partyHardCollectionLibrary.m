//
//  partyHardCollectionLibrary.m
//  DoWey
//
//  Created by Faris Zaman on 31/07/2017.
//  Copyright © 2017 DoWey. All rights reserved.
//

#import "partyHardCollectionLibrary.h"

NSString *const kPartyCollectionIcon = @"collectionIcon";
NSString *const kPartyEventTitle = @"eventTitle";
NSString *const kPartyEventPrice = @"eventPrice";
NSString *const kPartyEventIcon = @"eventIcon";

@implementation partyHardCollectionLibrary

-(instancetype) init{
    self = [super init];
    if (self) {
        _library        =   @[      @{ kPartyCollectionIcon:@"partyHard.png",
                                       kPartyEventTitle:@[@"One80", @"Mango's Cafe", @"Ember"],
                                       kPartyEventPrice:@[@"20", @"FREE", @"10"],
                                       kPartyEventIcon:@[@"one80.png",@"MangosCafe.png", @"ember.jpg"]
                                       }
                                    ];
    }
    return self;
}


@end
