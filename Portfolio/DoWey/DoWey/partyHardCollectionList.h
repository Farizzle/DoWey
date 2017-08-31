//
//  partyHardCollectionList.h
//  DoWey
//
//  Created by Faris Zaman on 31/07/2017.
//  Copyright © 2017 DoWey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "partyHardCollectionLibrary.h"

@interface partyHardCollectionList : NSObject

@property (strong, nonatomic) NSString *partyCollectionIcon;
@property (strong, nonatomic) NSArray *partyEventTitle;
@property (strong, nonatomic) NSArray *partyEventIcon;
@property (strong, nonatomic) NSArray *partyEventPrice;

- (instancetype)initWithIndex:(NSUInteger)index;

@end
