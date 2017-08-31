//
//  romanticCollectionList.m
//  DoWey
//
//  Created by Faris Zaman on 31/07/2017.
//  Copyright © 2017 DoWey. All rights reserved.
//

#import "romanticCollectionList.h"

@implementation romanticCollectionList

-(instancetype)initWithIndex:(NSUInteger)index{
    self = [super init];
    if (self) {
        
        romanticCollectionLibrary *romanticLibrary = [[romanticCollectionLibrary alloc]init];
        NSArray *library = romanticLibrary.library;
        
        NSDictionary *romanticDictionary = library[index];
        
        _romanticCollectionIcon = [romanticDictionary objectForKey:kRomanticCollectionIcon];
        _romanticEventTitle = [romanticDictionary objectForKey:kRomanticEventTitle];
        _romanticEventPrice = [romanticDictionary objectForKey:kRomanticEventPrice];
        _romanticEventIcon = [romanticDictionary objectForKey:kRomanticEventIcon];
    }
    return self;
}


@end
