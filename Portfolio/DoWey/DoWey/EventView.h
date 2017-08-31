//
//  EventView.h
//  DoWey
//
//  Created by Faris Zaman on 23/07/2017.
//  Copyright © 2017 DoWey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GoogleMaps/GoogleMaps.h>
#import <CoreLocation/CoreLocation.h>

@class EventsList;

@interface EventView : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, GMSMapViewDelegate, CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *ticketPrice;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) EventsList *eventList;
@property (weak, nonatomic) IBOutlet UIPageControl *imagesPageControl;

//Event Info
@property (weak, nonatomic) IBOutlet UICollectionView *eventDates;
@property (weak, nonatomic) IBOutlet UIImageView *eventImage;
@property (weak, nonatomic) IBOutlet UILabel *eventTitle;
@property (weak, nonatomic) IBOutlet UILabel *eventVenue;
@property (weak, nonatomic) IBOutlet UILabel *eventDescription;
@property (weak, nonatomic) IBOutlet UILabel *eventOffer;
@property (readonly) IBOutlet GMSMapView *mapsView;
@property (weak, nonatomic) IBOutlet UIView *viewDirections;
@property (weak, nonatomic) IBOutlet UIImageView *directionsImage;
@property (weak, nonatomic) IBOutlet UIView *directionsBackView;
@property (nonatomic, retain) CLLocationManager *locationManager;


//Tickets
@property (weak, nonatomic) IBOutlet UILabel *numberofTickets;
- (IBAction)increaseTickets:(id)sender;
- (IBAction)decreaseTickets:(id)sender;

//Actions
- (IBAction)handleSwipe:(UISwipeGestureRecognizer*)sender;
- (IBAction)getDirections:(id)sender;






@end
