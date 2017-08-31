//
//  romanticCollectionList.h
//  DoWey
//
//  Created by Faris Zaman on 31/07/2017.
//  Copyright © 2017 DoWey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "romanticCollectionLibrary.h"

@interface romanticCollectionList : NSObject

@property (strong, nonatomic) NSString *romanticCollectionIcon;
@property (strong, nonatomic) NSArray *romanticEventTitle;
@property (strong, nonatomic) NSArray *romanticEventIcon;
@property (strong, nonatomic) NSArray *romanticEventPrice;

- (instancetype)initWithIndex:(NSUInteger)index;

@end
