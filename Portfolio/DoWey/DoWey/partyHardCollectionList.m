//
//  partyHardCollectionList.m
//  DoWey
//
//  Created by Faris Zaman on 31/07/2017.
//  Copyright © 2017 DoWey. All rights reserved.
//

#import "partyHardCollectionList.h"

@implementation partyHardCollectionList

-(instancetype)initWithIndex:(NSUInteger)index{
    self = [super init];
    if (self) {
        
        partyHardCollectionLibrary *partyLibrary = [[partyHardCollectionLibrary alloc]init];
        NSArray *library = partyLibrary.library;
        
        NSDictionary *partyDictionary = library[index];
        
        _partyCollectionIcon = [partyDictionary objectForKey:kPartyCollectionIcon];
        _partyEventTitle = [partyDictionary objectForKey:kPartyEventTitle];
        _partyEventPrice = [partyDictionary objectForKey:kPartyEventPrice];
        _partyEventIcon = [partyDictionary objectForKey:kPartyEventIcon];
    }
    return self;
}


@end
