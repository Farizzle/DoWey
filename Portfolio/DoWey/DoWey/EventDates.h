//
//  EventDates.h
//  DoWey
//
//  Created by Faris Zaman on 23/07/2017.
//  Copyright © 2017 DoWey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EventDates : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *eventDate;
@property (weak, nonatomic) IBOutlet UILabel *eventTime;
@property (weak, nonatomic) IBOutlet UIView *highLightedBack;

@end
