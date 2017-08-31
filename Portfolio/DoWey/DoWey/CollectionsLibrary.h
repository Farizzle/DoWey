//
//  CollectionsLibrary.h
//  DoWey
//
//  Created by Faris Zaman on 31/07/2017.
//  Copyright © 2017 DoWey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "EventsLibrary.h"

@interface CollectionsLibrary : NSObject

extern NSString *const kCollectionTitle;
extern NSString *const kCollectionIcon;

@property (strong, nonatomic) NSArray *library;

@end
