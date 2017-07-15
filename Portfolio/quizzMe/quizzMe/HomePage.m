//
//  ViewController.m
//  quizzMe
//
//  Created by Faris Zaman on 24/02/2017.
//  Copyright © 2017 --. All rights reserved.
//

#import "HomePage.h"
#import "SWRevealViewController.h"

@interface HomePage ()


@end

@implementation HomePage


- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Label rotational alignment
    _scienceLabel.transform = CGAffineTransformMakeRotation(-M_PI/2);
    _mathsLabel.transform = CGAffineTransformMakeRotation(M_PI/2);
    _geographyLabel.transform = CGAffineTransformMakeRotation(-M_PI/2);
    _englishLabel.transform = CGAffineTransformMakeRotation(M_PI/2);
    _lawLabel.transform = CGAffineTransformMakeRotation(-M_PI/2);
    _politicsLabel.transform = CGAffineTransformMakeRotation(M_PI/2);
    _musicLabel.transform = CGAffineTransformMakeRotation(-M_PI/2);
    _dramaLabel.transform = CGAffineTransformMakeRotation(M_PI/2);
    
    //Hide Nav-bar
    [self.navigationController setNavigationBarHidden:YES animated:NO];
    
    //Pan Slide-Out Menu
    _slideOutMenu.target = self.revealViewController;
    _slideOutMenu.action = @selector(rightRevealToggle:);
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
}

- (void)viewDidAppear:(BOOL)animated{
     [self.navigationController setNavigationBarHidden:YES animated:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
