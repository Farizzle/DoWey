//
//  ViewController.h
//  MetriCellTest
//
//  Created by Faris Zaman on 21/08/2017.
//  Copyright © 2017 Faris Zaman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *userInput;
@property (weak, nonatomic) IBOutlet UILabel *fizzBuzz;
@property (weak, nonatomic) IBOutlet UIImageView *imageDisplay;
@property (weak, nonatomic) NSString *enteredValue;

// Button method to calculate value
//- (IBAction)runFizzBuzz:(id)sender;


@end

