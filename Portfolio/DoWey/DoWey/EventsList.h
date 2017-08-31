//
//  EventsList.h
//  DoWey
//
//  Created by Faris Zaman on 16/07/2017.
//  Copyright © 2017 DoWey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "EventsLibrary.h"
#import <GoogleMaps/GoogleMaps.h>

@interface EventsList : NSObject <GMSMapViewDelegate>

@property (strong, nonatomic) NSString *groupTitle;
@property (strong, nonatomic) NSString *groupIcon;
@property (strong, nonatomic) NSString *eventOffer;
@property (strong, nonatomic) NSString *eventTitle;
@property (strong, nonatomic) NSString *eventLocation;
@property (strong, nonatomic) NSString *eventPrice;
@property (strong, nonatomic) NSString *eventIcon;
@property (strong, nonatomic) NSArray *eventLargeIcon;
@property (strong, nonatomic) NSString *eventType;
@property (strong, nonatomic) NSArray *eventDate;
@property (strong, nonatomic) NSArray *eventTime;
@property (strong, nonatomic) NSString *eventDescription;
@property (strong, nonatomic) NSString *longitude;
@property (strong, nonatomic) NSString *latitude;

- (instancetype)initWithIndex:(NSUInteger)index;

@end
