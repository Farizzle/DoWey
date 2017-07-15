//
//  QuizTipViewController.h
//  quizzMe
//
//  Created by Faris Zaman on 19/03/2017.
//  Copyright © 2017 --. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol QuizTipViewControllerDelegate;

@interface QuizTipViewController : UIViewController

@property (nonatomic, assign) id <QuizTipViewControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextView * tipView;
@property (nonatomic, copy) NSString * tipText;

- (IBAction)doneAction:(id)sender;

@end

@protocol QuizTipViewControllerDelegate
- (void)quizTipDidFinish:(QuizTipViewController *)controller;
@end

