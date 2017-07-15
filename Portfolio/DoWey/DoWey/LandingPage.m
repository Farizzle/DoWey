//
//  LandingPage.m
//  DoWey
//
//  Created by Faris Zaman on 14/07/2017.
//  Copyright © 2017 DoWey. All rights reserved.
//

#import "LandingPage.h"

@interface LandingPage ()

@end

@implementation LandingPage

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _landingPageBackGround.image = [UIImage imageNamed:@"CityRain.png"];
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
