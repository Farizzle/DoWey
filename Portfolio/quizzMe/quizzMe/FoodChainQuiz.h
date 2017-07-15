//
//  FoodChainQuiz.h
//  quizzMe
//
//  Created by Faris Zaman on 18/03/2017.
//  Copyright © 2017 --. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuizTipViewController.h"

@class Quiz;

@interface FoodChainQuiz : UIViewController <QuizTipViewControllerDelegate>

@property (nonatomic, assign) NSInteger quizIndex;
@property (nonatomic, strong) Quiz *quiz;

- (IBAction)ans1Action:(id)sender;
- (IBAction)ans2Action:(id)sender;
- (IBAction)ans3Action:(id)sender;
- (IBAction)ans4Action:(id)sender;
- (IBAction)startAgain:(id)sender;

@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *tapAnswer1;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *tapAnswer2;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *tapAnswer3;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *tapAnswer4;

@end
