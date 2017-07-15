//
//  AchievementList.h
//  quizzMe
//
//  Created by Faris Zaman on 26/05/2017.
//  Copyright © 2017 --. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AchievementList : NSObject

@property (strong, nonatomic) NSString *achievementTitle;
@property (strong, nonatomic) NSString *achievementDescription;
@property (strong, nonatomic) UIImage *achievementIcon;
@property (strong, nonatomic) UIImage *achievementLargeIcon;

- (instancetype)initWithIndex:(NSUInteger)index;

@end
