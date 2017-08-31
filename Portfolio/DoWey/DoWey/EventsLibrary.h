//
//  Events.h
//  DoWey
//
//  Created by Faris Zaman on 16/07/2017.
//  Copyright © 2017 DoWey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <GoogleMaps/GoogleMaps.h>

extern NSString *const kGroupTitle;
extern NSString *const kGroupIcon;
extern NSString *const kOffer;
extern NSString *const kTitle;
extern NSString *const kLocation;
extern NSString *const kPrice;
extern NSString *const kIcon;
extern NSString *const kLargeIcon;
extern NSString *const kType;
extern NSString *const kDate;
extern NSString *const kTime;
extern NSString *const kDescription;
extern NSString *const kLongitude;
extern NSString *const kLatitude;


@interface EventsLibrary : NSObject

@property (strong, nonatomic) NSArray *library;

@end
