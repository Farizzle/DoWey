//
//  AchievementLibrary.h
//  quizzMe
//
//  Created by Faris Zaman on 26/05/2017.
//  Copyright © 2017 --. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const kTitle;
extern NSString *const kDescription;
extern NSString *const kIcon;
extern NSString *const kLargeIcon;

@interface AchievementLibrary : NSObject

@property (strong, nonatomic) NSArray *library;

@end
