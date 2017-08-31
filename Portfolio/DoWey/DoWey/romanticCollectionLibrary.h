//
//  romanticCollectionLibrary.h
//  DoWey
//
//  Created by Faris Zaman on 31/07/2017.
//  Copyright © 2017 DoWey. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const kRomanticCollectionIcon;
extern NSString *const kRomanticEventTitle;
extern NSString *const kRomanticEventPrice;
extern NSString *const kRomanticEventIcon;

@interface romanticCollectionLibrary : NSObject

@property (strong, nonatomic) NSArray *library;

@end
