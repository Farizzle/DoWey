//
//  IndividualAchievements.h
//  quizzMe
//
//  Created by Faris Zaman on 26/05/2017.
//  Copyright © 2017 --. All rights reserved.
//

#import <UIKit/UIKit.h>
@class AchievementList;

@interface IndividualAchievements : UIViewController

@property (strong, nonatomic) AchievementList *achievementlist;

@property (weak, nonatomic) IBOutlet UIImageView *achievementLargeIcon;
@property (weak, nonatomic) IBOutlet UILabel *achievementTitle;
@property (weak, nonatomic) IBOutlet UILabel *achievementDescription;

@end
