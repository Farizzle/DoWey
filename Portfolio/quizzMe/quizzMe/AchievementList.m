//
//  AchievementList.m
//  quizzMe
//
//  Created by Faris Zaman on 26/05/2017.
//  Copyright © 2017 --. All rights reserved.
//

#import "AchievementList.h"
#import "AchievementLibrary.h"

@implementation AchievementList

- (instancetype)initWithIndex:(NSUInteger)index{
    self = [super init];
    if (self) {
        AchievementLibrary *achievementLibrary = [[AchievementLibrary alloc]init];
        NSArray *library = achievementLibrary.library;
        
        NSDictionary *achievementDictionary = library[index];
        
        _achievementTitle = [achievementDictionary objectForKey:kTitle];
        _achievementDescription = [achievementDictionary objectForKey:kDescription];
        
        NSString *iconName = [achievementDictionary objectForKey:kIcon];
        _achievementIcon = [UIImage imageNamed:iconName];
        
        _achievementLargeIcon = [achievementDictionary objectForKey:kLargeIcon];
    }
    return self;
}

@end
