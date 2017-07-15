//
//  Quiz.h
//  quizzMe
//
//  Created by Faris Zaman on 18/03/2017.
//  Copyright © 2017 --. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Quiz : NSObject

@property (nonatomic, strong) NSMutableArray * foodChainArray;
@property (nonatomic, assign) NSInteger correctCount;
@property (nonatomic, assign) NSInteger incorrectCount;
@property (nonatomic, assign) NSInteger quizCount;
@property (nonatomic, readonly, strong) NSString * question;
@property (nonatomic, readonly, strong) NSString * ans1;
@property (nonatomic, readonly, strong) NSString * ans2;
@property (nonatomic, readonly, strong) NSString * ans3;
@property (nonatomic, readonly, strong) NSString * ans4;
@property (nonatomic, assign) NSInteger tipCount;
@property (nonatomic, strong) NSString * tip;

-(id) initWithQuiz: (NSString*)plistName;
-(void) nextQuestion: (NSUInteger) idx;
-(BOOL) checkQuestion: (NSUInteger) question forAnswer: (NSUInteger) answer;

@end
