//
//  EventsCell.h
//  DoWey
//
//  Created by Faris Zaman on 16/07/2017.
//  Copyright © 2017 DoWey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EventsCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *eventOffer;
@property (weak, nonatomic) IBOutlet UIImageView *eventImage;
@property (weak, nonatomic) IBOutlet UILabel *eventTitle;
@property (weak, nonatomic) IBOutlet UILabel *eventLocation;
@property (weak, nonatomic) IBOutlet UILabel *eventPrice;
@property (weak, nonatomic) IBOutlet UILabel *eventType;

@end
