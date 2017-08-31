//
//  RegistrationPage.m
//  DoWey
//
//  Created by Faris Zaman on 13/07/2017.
//  Copyright © 2017 DoWey. All rights reserved.
//

#import "RegistrationPage.h"
#import <QuartzCore/QuartzCore.h>


@interface RegistrationPage ()

@end

@implementation RegistrationPage

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Hard code logout
    [FBSDKAccessToken setCurrentAccessToken:nil];
    [FBSDKProfile setCurrentProfile:nil];
    
    //Set initial image for landing page
    _backGround.image = [UIImage imageNamed:@"Soccer.png"];
    
    //Set initial information for landing page
    _additionalInfo.text = [NSString stringWithFormat: @"Find the best events in Orlando based on your mood"];
    
    //Set page limit
    self.pageControl.numberOfPages = 4;
    self.pageControl.currentPage = 0;
    
    //FACEBOOKSDK
    //Delegate for log-in View
    self.loginButton.delegate = self;

    //Check for existing access token and skip login page
    if ([FBSDKAccessToken currentAccessToken] != nil){
        [self loadMainViewNoAnimation];
    }
    
    //Create and initialize facebook log-in button
    FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc]init];
    
    //Round off corners of FB Button
    loginButton.layer.cornerRadius = 30;
    loginButton.clipsToBounds = YES;
    
    //Check for permission for information
    loginButton.readPermissions = @[@"public_profile", @"email"];
    }


    //For profile page in order to display correct facebook information *EXPORT FILE TO PROFILE VIEW CONTROLLER*
    - (void)loginButton:(FBSDKLoginButton *)loginButton didCompleteWithResult:(FBSDKLoginManagerLoginResult *)result error:(NSError *)error{
    NSMutableDictionary* parameters = [NSMutableDictionary dictionary];
    [parameters setValue:@"id,name,email" forKey:@"fields"];
    
    [[[FBSDKGraphRequest alloc] initWithGraphPath:@"me" parameters:parameters] startWithCompletionHandler:^(FBSDKGraphRequestConnection *connection, id result, NSError *error) {
        _lblUsername.text = [result valueForKey:@"name"];
        _lblEmail.text = [result valueForKey:@"email"];
    }];
        [self loadMainView];
    }

    //For profile page in order to log out *EXPORT FILE TO PROFILE VIEW CONTROLLER*
    - (void)loginButtonDidLogOut:(FBSDKLoginButton *)loginButton{
    }


    - (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    }


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    
    // Pass the selected object to the new view controller.
}

//For first time log-in
- (void)loadMainView
{
    UIViewController *mainViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"LandingPage"];
    [self.navigationController pushViewController:mainViewController animated:YES];
}

//For relaunch application
- (void)loadMainViewNoAnimation
{
    UIViewController *mainViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"LandingPage"];

    [self addChildViewController:mainViewController];
    [self.view addSubview:mainViewController.view];
    
    [mainViewController didMoveToParentViewController:self];
    [mainViewController.view setFrame:self.view.bounds];
}

//METHODS

//Array numbers
int imageIndex = 4;
int informationIndex = 4;

//Change landing page picture and information
- (IBAction)handleSwipe:(id)sender {
    //NSLog(@"swiped");
    
    //Animation for background
    //Left
    CATransition *transistionLeft = [CATransition animation];
    transistionLeft.duration = 0.4f;
    transistionLeft.timingFunction = [CAMediaTimingFunction functionWithName: kCAMediaTimingFunctionEaseInEaseOut];
    transistionLeft.type = kCATransitionFade;
    transistionLeft.subtype = kCATransitionFromLeft;
    
    //Right
    CATransition *transitionRight = [CATransition animation];
    transitionRight.duration = 0.4f;
    transitionRight.timingFunction = [CAMediaTimingFunction functionWithName: kCAMediaTimingFunctionEaseInEaseOut];
    transitionRight.type = kCATransitionFade;
    transitionRight.subtype = kCATransitionFromRight;
    
    //Arrays
    //Image Array
    NSArray *images = [[NSArray alloc] initWithObjects:
                       @"Soccer.png",
                       @"Concert.png",
                       @"Lunch.png",
                       @"CityBlur.png", nil];
    
    NSArray *information = [[NSArray alloc] initWithObjects:
                            @"Find the best events in Orlando based on your mood",
                            @"Experience special events for a limited time only in Orlando",
                            @"Do something special this weekend with your friends",
                            @"Expand your horizons and view the unknown side of Orlando", nil];
    
    //Handle R + L swipes
    UISwipeGestureRecognizerDirection direction = [(UISwipeGestureRecognizer*) sender direction];

    switch (direction) {
        case UISwipeGestureRecognizerDirectionLeft:
            imageIndex++;
            informationIndex++;
            if (_pageControl.currentPage == _pageControl.numberOfPages -1 ) {
                self.pageControl.currentPage =0;
            }
            else{
                self.pageControl.currentPage +=1;
            }
             [_backGround.layer addAnimation:transitionRight forKey:nil];
            break;
        case UISwipeGestureRecognizerDirectionRight:
            imageIndex--;
            informationIndex--;
            if (_pageControl.currentPage == 0) {
                self.pageControl.currentPage = 4;
            }
            else{
            self.pageControl.currentPage -=1;
            }
            [_backGround.layer addAnimation:transistionLeft forKey:nil];
        default:
            break;
    }
    
    //Ensure array resets
    imageIndex = (imageIndex < 0) ? ([images count] -1):
    imageIndex % [images count];
    _backGround.image = [UIImage imageNamed:[images objectAtIndex:imageIndex]];
    
    informationIndex = (informationIndex < 0) ? ([information count] -1):
    informationIndex % [information count];
    _additionalInfo.text = [NSString stringWithFormat:@"%@", [information objectAtIndex:informationIndex]];
    
}
@end
