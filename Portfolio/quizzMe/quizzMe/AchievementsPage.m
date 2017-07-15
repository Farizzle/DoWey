//
//  AchievementsPage.m
//  quizzMe
//
//  Created by Faris Zaman on 25/05/2017.
//  Copyright © 2017 --. All rights reserved.
//

#import "AchievementsPage.h"
#import "IndividualAchievements.h"
#import "AchievementList.h"

@interface AchievementsPage ()

@end

@implementation AchievementsPage

- (void)viewDidLoad {
    [super viewDidLoad];
    
    for (NSUInteger index = 0; index < self.achievementImageViews.count; index++){
        
        AchievementList *achievementlist = [[AchievementList alloc] initWithIndex:index];
        
        UIImageView *achievementImageViews = self.achievementImageViews[index];
        
        achievementImageViews.image = achievementlist.achievementIcon;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqual: @"showAchievementDetail"]) {
        UIImageView *achievementImageViews = (UIImageView*)[sender view];
        
        if ([self.achievementImageViews containsObject:achievementImageViews]) {
            NSUInteger index = [self.achievementImageViews indexOfObject:achievementImageViews];
            IndividualAchievements *invidualAchivemementsController = (IndividualAchievements*)segue.destinationViewController;
            invidualAchivemementsController.achievementlist = [[AchievementList alloc]initWithIndex:index];
        }
    }
}
    
    
- (IBAction)showAchievementDetail:(id)sender {
        [self performSegueWithIdentifier:@"showAchievementDetail" sender:sender];
        
}

@end
