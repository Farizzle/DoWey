//
//  IndividualAchievements.m
//  quizzMe
//
//  Created by Faris Zaman on 26/05/2017.
//  Copyright © 2017 --. All rights reserved.
//

#import "IndividualAchievements.h"
#import "AchievementList.h"

@interface IndividualAchievements ()

@end

@implementation IndividualAchievements

- (void)viewDidLoad {
    [super viewDidLoad];
    if (self.achievementlist){
        self.achievementLargeIcon.image = [UIImage imageNamed:self.achievementlist.achievementLargeIcon];
        self.achievementTitle.text = self.achievementlist.achievementTitle;
        self.achievementDescription.text = self.achievementlist.achievementDescription;
    }
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
