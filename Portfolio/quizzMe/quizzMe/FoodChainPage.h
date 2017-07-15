//
//  FoodChainPage.h
//  quizzMe
//
//  Created by Faris Zaman on 10/03/2017.
//  Copyright © 2017 --. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FoodChainPage : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *titleQuestion;
@property (weak, nonatomic) IBOutlet UILabel *contentText;
@property (weak, nonatomic) IBOutlet UIImageView *imageOne;
@property (weak, nonatomic) IBOutlet UIImageView *imageTwo;

@property (strong, nonatomic) NSMutableArray *foodChainTitle;
@property (strong, nonatomic) NSMutableArray *foodChainFacts;
@property (strong, nonatomic) NSMutableArray *foodChainPicturesImageOne;
@property (strong, nonatomic) NSMutableArray *foodChainPicturesImageTwo;

@property int currentTitle;
@property int currentText;
@property int currentPicture1;
@property int currentPicture2;

- (IBAction)nextButton:(id)sender;


@end
