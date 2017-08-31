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
    
    _landingPageBackGround.image = [UIImage imageNamed:@"LandingPage.jpg"];
    
    //Apply setRoundedView method
    _yourDoWey.clipsToBounds = YES;
    self.yourDoWey.layer.cornerRadius = _yourDoWey.frame.size.width / 2.0;
    
    [self performSelector:@selector(setStyleCircleForView:) withObject:_yourDoWey afterDelay:0];
    [self performSelector:@selector(setStyleCircleForView:) withObject:_peoplesDoWey afterDelay:0];
    
    //Edit background of view
    _yourDoWey.backgroundColor = [UIColor colorWithRed:85.0/255.0 green:85.0/255.0 blue:85.0/255.0 alpha:0.8];
    _peoplesDoWey.backgroundColor = [UIColor colorWithRed:85.0/255.0 green:85.0/255.0 blue:85.0/255.0 alpha:0.8];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Make UIView into a circle
- (void) setStyleCircleForView:(UIView*)doWeyView{
    doWeyView.layer.cornerRadius = doWeyView.frame.size.width / 2.0;
    doWeyView.clipsToBounds = YES;
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
