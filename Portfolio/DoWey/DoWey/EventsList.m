//
//  EventsList.m
//  DoWey
//
//  Created by Faris Zaman on 16/07/2017.
//  Copyright © 2017 DoWey. All rights reserved.
//

#import "EventsList.h"

@implementation EventsList

-(instancetype)initWithIndex:(NSUInteger)index{
    self = [super init];
    if (self) {
        
        EventsLibrary *eventsLibrary = [[EventsLibrary alloc]init];
        NSArray *library = eventsLibrary.library;
        
        NSDictionary *eventsDictionary = library[index];
        
        _groupTitle = [eventsDictionary objectForKey:kGroupTitle];
        _groupIcon = [eventsDictionary objectForKey:kGroupIcon];
        _eventOffer = [eventsDictionary objectForKey:kOffer];
        _eventTitle = [eventsDictionary objectForKey:kTitle];
        _eventLocation = [eventsDictionary objectForKey:kLocation];
        _eventPrice = [eventsDictionary objectForKey:kPrice];
        _eventDate = [eventsDictionary objectForKey:kDate];
        _eventTime = [eventsDictionary objectForKey:kTime];
        _eventDescription = [eventsDictionary objectForKey:kDescription];
        _eventIcon = [UIImage imageNamed:[eventsDictionary objectForKey:kIcon]];
        _eventLargeIcon = [eventsDictionary objectForKey:kLargeIcon];
        _eventType = [eventsDictionary objectForKey:kType];
        _longitude = [eventsDictionary objectForKey:kLongitude];
        _latitude = [eventsDictionary objectForKey:kLatitude];
    }
    return self;
}

@end
