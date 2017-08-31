//
//  romanticCollectionLibrary.m
//  DoWey
//
//  Created by Faris Zaman on 31/07/2017.
//  Copyright © 2017 DoWey. All rights reserved.
//

#import "romanticCollectionLibrary.h"

NSString *const kRomanticCollectionIcon = @"collectionIcon";
NSString *const kRomanticEventTitle = @"eventTitle";
NSString *const kRomanticEventPrice = @"eventPrice";
NSString *const kRomanticEventIcon = @"eventIcon";

@implementation romanticCollectionLibrary

-(instancetype) init{
    self = [super init];
    if (self) {
        _library        =   @[      @{ kRomanticCollectionIcon:@"getRomantic.png",
                                       kRomanticEventTitle:@[@"iCafe de Paris", @"Orlando's Museum of Art", @"Cobb's Plaza Cinema"],
                                       kRomanticEventPrice:@[@"10", @"20", @"8"],
                                       kRomanticEventIcon:@[@"iCafe.png",@"Museum.png", @"CobbsCinema.png"]
                                       }
                                    ];
    }
    return self;
}


@end
