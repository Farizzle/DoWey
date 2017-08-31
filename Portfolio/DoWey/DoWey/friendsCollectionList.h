//
//  friendsCollectionList.h
//  DoWey
//
//  Created by Faris Zaman on 31/07/2017.
//  Copyright © 2017 DoWey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "friendsCollectionLibrary.h"

@interface friendsCollectionList : NSObject

@property (strong, nonatomic) NSString *friendsCollectionIcon;
@property (strong, nonatomic) NSArray *friendsEventTitle;
@property (strong, nonatomic) NSArray *friendsEventIcon;
@property (strong, nonatomic) NSArray *friendsEventPrice;

- (instancetype)initWithIndex:(NSUInteger)index;

@end
