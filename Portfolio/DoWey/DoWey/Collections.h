//
//  Collections.h
//  DoWey
//
//  Created by Faris Zaman on 01/08/2017.
//  Copyright © 2017 DoWey. All rights reserved.
//

#import <UIKit/UIKit.h>

@class friendsCollectionList;

@interface Collections : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@property (strong, nonatomic) friendsCollectionList *friendsList;

@property (weak, nonatomic) IBOutlet UIImageView *collectionLargeImage;

@property (weak, nonatomic) IBOutlet UICollectionView *yourCollectionEvents;




@end
