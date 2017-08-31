//
//  Events.m
//  DoWey
//
//  Created by Faris Zaman on 16/07/2017.
//  Copyright © 2017 DoWey. All rights reserved.
//

#import "EventsLibrary.h"

NSString *const kGroupTitle = @"groupTitle";
NSString *const kGroupIcon = @"groupIcon";
NSString *const kOffer = @"offer";
NSString *const kTitle = @"title";
NSString *const kLocation = @"location";
NSString *const kPrice = @"price";
NSString *const kIcon = @"icon";
NSString *const kLargeIcon = @"largeIcon";
NSString *const kType = @"type";
NSString *const kDate = @"date";
NSString *const kTime = @"time";
NSString *const kDescription = @"description";
NSString *const kLongitude = @"longitude";
NSString *const kLatitude = @"latitude";

@implementation EventsLibrary

-(instancetype) init{
    self = [super init];
    if (self) {
        _library        =   @[      @{   kGroupTitle:@"Get Romantic",
                                         kGroupIcon:@"getRomantic.png",
                                         kOffer:@"Free Drink with Order of Savoury Crepe",
                                         kTitle:@"iCafe de Paris",
                                         kLocation:@"International Drive",
                                         kPrice:@"10",
                                         kIcon:@"iCafe.png",
                                         kLargeIcon:@[@"iCafeLrg.png", @"iCafe2.jpg", @"iCafe3.jpg", @"iCafe4.jpg"],
                                         kType:@"Food",
                                         kDate:@[@"02/08/2017",@"03/08/2017", @"04/08/2017", @"05/08/2017",@"06/08/2017", @"07/08/2017"],
                                         kTime:@[@"19:00",@"19:00",@"19:00",@"19:00", @"19:00",@"19:30"],
                                         kDescription: @"Enjoy the views of International Drive right next to the Orlando Eye whilst induldging in your choice of sweet or savioury crepes and deserts.",
                                         kLongitude: @"28.44",
                                         kLatitude: @"-81.47"},
                                    
                                    @{   kGroupTitle:@"Party Hard",
                                         kGroupIcon:@"partyHard.png",
                                         kOffer:@"Bottomless Beverages",
                                         kTitle:@"Ember",
                                         kLocation:@"W Central Blvd",
                                         kPrice:@"10",
                                         kIcon:@"ember.jpg",
                                         kLargeIcon:@[@"ember.jpg", @"ember1.jpg", @"ember2.jpg", @"ember3.jpg"],
                                         kType:@"Drinks",
                                         kDate:@[@"04/08/2017",@"11/08/2017",@"18/08/2017",@"25/08/2017"],
                                         kTime:@[@"22:00",@"22:00",@"22:00",@"22:00"],
                                         kDescription:@"Based in the heart of downtown Orlando. Come on down on to the special event of Wine-Down-Wednesdays hosted by Ember. Enjoy bottomless beverages of wine, sangria and selected beers and champage.",
                                         kLongitude: @"28.54",
                                         kLatitude: @"-81.39"},
                                    
                                    @{   kGroupTitle:@"Get Romantic",
                                         kGroupIcon:@"getRomantic.png",
                                         kOffer:@"Orlando Abstract Art Fair 2017",
                                         kTitle:@"Orlando's Museum of Art",
                                         kLocation:@"N Mills Ave",
                                         kPrice:@"20",
                                         kIcon:@"Museum.png",
                                         kLargeIcon:@[@"MuseumLrg.png", @"Museum2.jpeg", @"Museum3.jpg", @"Museum4.jpg"],
                                         kType:@"Art",
                                         kDate:@[@"14/08/2017", @"16/08/2017",@"18/08/2017"],
                                         kTime:@[@"14:00",@"14:00",@"15:00"],
                                         kDescription:@"Home to the great art of Orlando's local artists.",
                                         kLongitude: @"28.57",
                                         kLatitude: @"-81.37"},
                                    
                                    @{   kGroupTitle:@"Party Hard",
                                         kGroupIcon:@"partyHard.png",
                                         kOffer:@"Spanish Night",
                                         kTitle:@"One80",
                                         kLocation:@"W Church Street",
                                         kPrice:@"20",
                                         kIcon:@"one80.png",
                                         kLargeIcon:@[@"Club180Lrg.png", @"one802.jpg", @"one803.jpg", @"one804.jpg"],
                                         kType:@"Drinks",
                                         kDate:@[@"01/09/2017", @"02/09/2017",@"03/09/2017"],
                                         kTime:@[@"22:00",@"22:00",@"22:00"],
                                         kDescription:@"Enjoy the party from atop the Orlando Skyline, great view and atmosphere in the club situated in the heights of Downtown Orlando",
                                         kLongitude:@"28.54",
                                         kLatitude:@"-81.39"},
                                    
                                    @{   kGroupTitle:@"friends",
                                         kGroupIcon:@"friends.png",
                                         kOffer:@"2-For-1 Canoes",
                                         kTitle:@"Wekiwa Springs",
                                         kLocation:@"Wekiwa Circle, Apopka",
                                         kPrice:@"5",
                                         kIcon:@"Wekiva.png",
                                         kLargeIcon:@[@"WekiwaLrg.png", @"Wekiwa2.jpeg", @"Wekiwa3.jpeg", @"Wekiwa4.jpg"],
                                         kType:@"Nature",
                                         kDate:@[@"15/09/2017",@"16/09/2017", @"17/09/2017", @"18/09/2017",@"19/09/2017", @"20/09/2017",@"21/09/2017"],
                                         kTime:@[@"09:00",@"09:00",@"09:00",@"09:00", @"10:00",@"10:00",@"09:00"],
                                         kDescription:@"Situated just outside of Orlando, get involved in the springs! Where you can sun-bathe, swim and even canoe!",
                                         kLongitude:@"28.71",
                                         kLatitude:@"-81.46"},
                                    
                                    @{   kGroupTitle:@"friends",
                                         kGroupIcon:@"friends.png",
                                         kOffer:@"2-For-1 Games",
                                         kTitle:@"Kings Bowling",
                                         kLocation:@"International Drive",
                                         kPrice:@"10",
                                         kIcon:@"KingsBowling.png",
                                         kLargeIcon:@[@"KingsLrg.png", @"Kings2.jpg", @"Kings3.jpg", @"Kings4.jpg"],
                                         kType:@"Sports",
                                         kDate:@[@"21/10/2017",@"22/10/2017", @"23/10/2017", @"24/10/2017",@"25/10/2017", @"26/10/2017",@"27/10/2017"],
                                         kTime:@[@"20:00",@"20:00",@"20:00",@"20:00", @"20:00",@"20:00",@"20:00"],
                                         kDescription:@"Get your game on! Get your bowling on in the famous Kings Bowling. With a great atmosphere, food and drinks!",
                                         kLongitude:@"28.45",
                                         kLatitude:@"-81.47"},
                                    
                                    @{   kGroupTitle:@"friends",
                                         kGroupIcon:@"friends.png",
                                         kOffer:@"Unlimited Holes for 1 Hour",
                                         kTitle:@"Pirate's Cove Mini Golf",
                                         kLocation:@"International Drive",
                                         kPrice:@"15",
                                         kIcon:@"PirateGolf.png",
                                         kLargeIcon:@[@"PiratesGolfLrg.png", @"Golf2.jpg", @"Golf3.jpg", @"Golf4.jpg"],
                                         kType:@"Sports",
                                         kDate:@[@"06/11/2017",@"07/11/2017", @"08/11/2017", @"09/11/2017",@"10/11/2017", @"11/11/2017",@"12/11/2017"],
                                         kTime:@[@"17:00",@"17:00",@"17:00",@"18:00", @"18:00",@"17:00",@"17:00"],
                                         kDescription:@"Ever wanted to be a pirate and play golf? Well now is your chance! This great venue has 2 seperate courses with different difficulties, each with 18 holes each!",
                                         kLongitude:@"28.44",
                                         kLatitude:@"-81.47"},
                                    
                                    @{   kGroupTitle:@"Get Romantic",
                                         kGroupIcon:@"getRomantic.png",
                                         kOffer:@"Free Drink With Order of Popcorn",
                                         kTitle:@"Cobb's Plaza Cinema",
                                         kLocation:@"S Orange Ave",
                                         kPrice:@"8",
                                         kIcon:@"CobbsCinema.png",
                                         kLargeIcon:@[@"CobbsLrg.png", @"Cobbs2.jpg", @"Cobbs3.jpg", @"Cobbs4.jpg"],
                                         kType:@"Theater",
                                         kDate:@[@"17/11/2017",@"18/11/2017", @"19/11/2017", @"20/11/2017",@"21/11/2017", @"22/11/2017",@"23/11/2017"],
                                         kTime:@[@"09:00",@"09:00",@"09:00",@"09:00", @"10:00",@"10:00",@"09:00"],
                                         kDescription:@"Located in Downtown, with the state of art cinema technology and great comfort with recliner seats!",
                                         kLongitude:@"28.54",
                                         kLatitude:@"-81.38"},
                                    
                                    @{   kGroupTitle:@"Party Hard",
                                         kGroupIcon:@"partyHard.png",
                                         kOffer:@"Free Cocktail with Order of Main",
                                         kTitle:@"Mango's Cafe",
                                         kLocation:@"International Drive",
                                         kPrice:@"FREE",
                                         kIcon:@"MangosCafe.png",
                                         kLargeIcon:@[@"MangosLrg.png", @"Mangos2.jpg", @"Mangos3.jpg", @"Mangos4.jpg"],
                                         kType:@"Food",
                                         kDate:@[@"27/12/2017", @"28/12/2017",@"29/12/2017"],
                                         kTime:@[@"20:00",@"20:00",@"20:00"],
                                         kDescription:@"The famous Mangos Cafe which originated in Miami is now in Orlando! Enjoy a great latin entertainment alongside your choice of exotic cocktails and food!",
                                         kLongitude:@"28.45",
                                         kLatitude:@"-81.47"}
                              ];
    }
    return self;
}

@end
