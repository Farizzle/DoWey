//
//  FoodChainQuiz.m
//  quizzMe
//
//  Created by Faris Zaman on 18/03/2017.
//  Copyright © 2017 --. All rights reserved.
//

#import "FoodChainQuiz.h"
#import "Quiz.h"

@interface FoodChainQuiz ()

@property (weak, nonatomic) IBOutlet UILabel * questionLabel;
@property (weak, nonatomic) IBOutlet UILabel * answer1Label;
@property (weak, nonatomic) IBOutlet UILabel * answer2Label;
@property (weak, nonatomic) IBOutlet UILabel * answer3Label;
@property (weak, nonatomic) IBOutlet UILabel * answer4Label;
@property (weak, nonatomic) IBOutlet UIButton * answer1Button;
@property (weak, nonatomic) IBOutlet UIButton * answer2Button;
@property (weak, nonatomic) IBOutlet UIButton * answer3Button;
@property (weak, nonatomic) IBOutlet UIButton * answer4Button;
@property (weak, nonatomic) IBOutlet UIImageView * foodchain1;
@property (weak, nonatomic) IBOutlet UIImageView * foodchain2;
@property (weak, nonatomic) IBOutlet UIImageView * foodchain3;
@property (weak, nonatomic) IBOutlet UIImageView * foodchain4;
@property (weak, nonatomic) IBOutlet UILabel * statusLabel;
@property (weak, nonatomic) IBOutlet UIButton * startButton;
@property (weak, nonatomic) IBOutlet UIButton * infoButton;
@property (assign, nonatomic) NSInteger answer;


@end

@implementation FoodChainQuiz{
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self. quizIndex = 999;
    self.quiz = [[Quiz alloc]initWithQuiz:@"questions"];
    [self nextQuizItem];
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

-(void)quizDone {
    if (self.quiz.correctCount){
        self.statusLabel.text = [NSString stringWithFormat:@"Quiz Done - Score %ld%%", self.quiz.quizCount / self.quiz.correctCount];
    } else {
        self.statusLabel.text = @"Quiz Done - Score 0%";
    }
    [self.startButton setTitle:@"Try Again" forState:UIControlStateNormal];
    self.quizIndex =  999;
}

// reset fields for next question

-(void)nextQuizItem{
    if (self.quizIndex == 999) {
        self.quizIndex = 0;
        self.statusLabel.text = @"";
    } else if ((self.quiz.quizCount-1) > self.quizIndex){
        self.quizIndex++;
    } else {
        self.quizIndex = 0;
        self.statusLabel.text = @"";
    }
    
    if (self.quiz.quizCount >= self.quizIndex +1) {
        [self.quiz nextQuestion: self.quizIndex];
        self.questionLabel.text = self.quiz.question;
        self.answer1Label.text = self.quiz.ans1;
        self.answer2Label.text = self.quiz.ans2;
        self.answer3Label.text = self.quiz.ans3;
        self.answer4Label.text = self.quiz.ans4;
    } else {
        self.quizIndex = 0;
        [self quizDone];
    
    if (self.quiz.tipCount < 3){
        self.infoButton.hidden = NO;
    } else {
        self.infoButton.hidden = YES;
    }
}
    
    self.answer1Label.backgroundColor = [UIColor colorWithRed:152/255.0 green:162/255.0 blue:170/255.0 alpha:0.75];
    self.answer2Label.backgroundColor = [UIColor colorWithRed:152/255.0 green:162/255.0 blue:170/255.0 alpha:0.75];
    self.answer3Label.backgroundColor = [UIColor colorWithRed:152/255.0 green:162/255.0 blue:170/255.0 alpha:0.75];
    self.answer4Label.backgroundColor = [UIColor colorWithRed:152/255.0 green:162/255.0 blue:170/255.0 alpha:0.75];
    
    [self.answer1Label addGestureRecognizer:_tapAnswer1];
    [self.answer2Label addGestureRecognizer:_tapAnswer2];
    [self.answer3Label addGestureRecognizer:_tapAnswer3];
    [self.answer4Label addGestureRecognizer:_tapAnswer4];
}

- (void)checkAnswer{
    if ([self.quiz checkQuestion:self.quizIndex forAnswer:_answer]) {
        if (self.answer == 1){
            self.answer1Label.backgroundColor = [UIColor greenColor];
        } else if (self.answer == 2){
            self.answer2Label.backgroundColor = [UIColor greenColor];
        } else if (self.answer == 3){
            self.answer3Label.backgroundColor = [UIColor greenColor];
        } else if (self.answer == 4){
            self.answer4Label.backgroundColor = [UIColor greenColor];
        }
    } else {
        if (self.answer == 1){
            self.answer1Label.backgroundColor = [UIColor redColor];
        } else if (self.answer == 2){
            self.answer2Label.backgroundColor = [UIColor redColor];
        } else if (self.answer == 3){
            self.answer3Label.backgroundColor = [UIColor redColor];
        } else if (self.answer == 4){
            self.answer4Label.backgroundColor = [UIColor redColor];
        }
    }
    
    self.statusLabel.text = [NSString stringWithFormat:@"Correct: %ld  Incorrect: %ld",(long)self.quiz.correctCount, (long)self.quiz.incorrectCount];
    
    [self.answer1Label removeGestureRecognizer:[_answer1Label.gestureRecognizers lastObject]];
    [self.answer2Label removeGestureRecognizer:[_answer2Label.gestureRecognizers lastObject]];
    [self.answer3Label removeGestureRecognizer:[_answer3Label.gestureRecognizers lastObject]];
    [self.answer4Label removeGestureRecognizer:[_answer4Label.gestureRecognizers lastObject]];
    
    self.startButton.hidden = NO;
    
    [self.startButton setTitle:@"Next" forState:UIControlStateNormal];
}

- (IBAction)ans1Action:(id)sender{
    self.answer = 1;
    [self checkAnswer];
}

- (IBAction)ans2Action:(id)sender{
    self.answer = 2;
    [self checkAnswer];
}

- (IBAction)ans3Action:(id)sender{
    self.answer = 3;
    [self checkAnswer];
}

- (IBAction)ans4Action:(id)sender{
    self.answer = 4;
    [self checkAnswer];
}

- (IBAction)startAgain:(id)sender{
    [self nextQuizItem];
}

- (void)quizTipDidFinish:(QuizTipViewController *)controller{
    [self dismissViewControllerAnimated:YES completion:^{}];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"TipModal"]) {
        QuizTipViewController * detailViewController = (QuizTipViewController *) segue.destinationViewController;
        detailViewController.delegate = self;
        detailViewController.tipText = self.quiz.tip;
    }
}
@end
