//
//  Quiz.m
//  quizzMe
//
//  Created by Faris Zaman on 18/03/2017.
//  Copyright © 2017 --. All rights reserved.
//

#import "Quiz.h"

@interface Quiz ()
    @property (nonatomic, strong) NSString *question;
    @property (nonatomic, strong) NSString * ans1;
    @property (nonatomic, strong) NSString * ans2;
    @property (nonatomic, strong) NSString * ans3;
    @property (nonatomic, strong) NSString * ans4;
@end

@implementation Quiz

-(void) nextQuestion:(NSUInteger)idx{
    self.question = [NSString stringWithFormat:@"'%@'", self.foodChainArray[idx][@"question"]];
    
    self.ans1 = self.foodChainArray[idx][@"ans1"];
    self.ans2 = self.foodChainArray[idx][@"ans2"];
    self.ans3 = self.foodChainArray[idx][@"ans3"];
    self.ans4 = self.foodChainArray[idx][@"ans4"];
    self.tip = self.foodChainArray[idx][@"tip"];
    
    if (idx == 0) {
        self.correctCount = 0;
        self.incorrectCount = 0;
        self.tipCount = 0;
    }
}

-(id)initWithQuiz:(NSString *)plistName{
    if ((self = [super init])){
        NSString *plistCatPath = [[NSBundle mainBundle] pathForResource:plistName ofType:@"plist"];
        self.foodChainArray = [NSMutableArray arrayWithContentsOfFile:plistCatPath];
        self.quizCount = [self.foodChainArray count];
    }
    self.tipCount = 0;
    return self;
}

-(BOOL) checkQuestion:(NSUInteger)question forAnswer:(NSUInteger)answer{
    NSString * ans = self.foodChainArray[question] [@"answer"];
    if ([ans intValue] == answer){
        self.correctCount ++;
        return YES;
    } else {
        self.incorrectCount ++;
        return NO;
    }
}

@end
