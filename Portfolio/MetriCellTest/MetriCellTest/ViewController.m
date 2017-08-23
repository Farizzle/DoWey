//
//  ViewController.m
//  MetriCellTest
//
//  Created by Faris Zaman on 21/08/2017.
//  Copyright © 2017 Faris Zaman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) UIImage *fizzBuzzImage;
@property (strong, nonatomic) UIImage *fizzImage;
@property (strong, nonatomic) UIImage *buzzImage;

@end

@implementation ViewController

@synthesize userInput, fizzBuzz, imageDisplay, enteredValue;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.userInput.keyboardType = UIKeyboardTypeNumberPad;
    
    self.fizzBuzz.text = @"Will it Fizz or Will it Buzz?";
    
    self.fizzBuzzImage = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://emkaydeum.files.wordpress.com/2015/08/fizzbuzz.png"]]];
    
    self.fizzImage = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://vignette2.wikia.nocookie.net/leagueoflegends/images/b/b0/Fizz_Render.png/revision/latest?cb=20151205185848"]]];
    
    self.buzzImage = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://vignette2.wikia.nocookie.net/disney/images/b/bc/Buzz_Disney_INFINITY_Render.png/revision/latest?cb=20140605182818"]]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)changeTextField:(id)sender{
    
    self.enteredValue = [userInput text];
    
    int multipleof3 = [enteredValue intValue] % 3;
    int multipleof5 = [enteredValue intValue] % 5;
    
    if (userInput.text.length == 0) {
        self.fizzBuzz.text = @"Will it Fizz or Will it Buzz?";
        self.imageDisplay.image = nil;
    }
    else if (userInput.text.length > 9){
        self.fizzBuzz.text = @"Overflow error";
        self.imageDisplay.image = nil;
    }
    else if (multipleof3 == 0 && multipleof5 == 0) {
        self.fizzBuzz.text = @"FizzBuzz";
        self.imageDisplay.image = self.fizzBuzzImage;
    }
    else if (multipleof5 == 0){
        self.fizzBuzz.text = @"Buzz";
        self.imageDisplay.image = self.buzzImage;
    }
    else if (multipleof3 == 0) {
        self.fizzBuzz.text = @"Fizz";
        self.imageDisplay.image = self.fizzImage;
    }
    else{
        self.fizzBuzz.text = @"Incorrect Value";
        self.imageDisplay.image = nil;
    }
}


- (void)checkTextFieldValue{
    
    self.enteredValue = [userInput text];
    
    int multipleof3 = [enteredValue intValue] % 3;
    int multipleof5 = [enteredValue intValue] % 5;
    
    if (multipleof3 == 0 && multipleof5 == 0) {
        self.fizzBuzz.text = @"FizzBuzz";
        self.imageDisplay.image = self.fizzBuzzImage;
    }
    else if (multipleof5 == 0){
        self.fizzBuzz.text = @"Buzz";
        self.imageDisplay.image = self.buzzImage;
    }
    else if (multipleof3 == 0) {
        self.fizzBuzz.text = @"Fizz";
        self.imageDisplay.image = self.fizzImage;
    }
    else{
        self.fizzBuzz.text = @"Incorrect Value";
        self.imageDisplay.image = nil;
    }
}

/* Button method to calculate value
- (IBAction)runFizzBuzz:(id)sender {
    
    self.enteredValue = [userInput text];
    
    int multipleof3 = [enteredValue intValue] % 3;
    int multipleof5 = [enteredValue intValue] % 5;
    
    if (multipleof3 == 0 && multipleof5 == 0) {
        self.fizzBuzz.text = @"FizzBuzz";
        self.imageDisplay.image = self.fizzBuzzImage;
    }
    else if (multipleof5 == 0){
        self.fizzBuzz.text = @"Buzz";
        self.imageDisplay.image = self.buzzImage;
    }
    else if (multipleof3 == 0) {
            self.fizzBuzz.text = @"Fizz";
            self.imageDisplay.image = self.fizzImage;
    }
    else{
        self.fizzBuzz.text = @"Incorrect Value";
        self.imageDisplay.image = nil;
    }
}*/

@end
