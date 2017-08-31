//
//  CollectionEventCell.h
//  DoWey
//
//  Created by Faris Zaman on 01/08/2017.
//  Copyright © 2017 DoWey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionEventCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *collectionEventImage;
@property (weak, nonatomic) IBOutlet UILabel *collectionEventTitle;
@property (weak, nonatomic) IBOutlet UILabel *collectionEventPrice;

@end
