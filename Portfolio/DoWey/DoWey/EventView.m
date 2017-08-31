//
//  EventView.m
//  DoWey
//
//  Created by Faris Zaman on 23/07/2017.
//  Copyright © 2017 DoWey. All rights reserved.
//

#import "EventView.h"
#import "EventsList.h"
#import "EventDates.h"
#import "MapStyles.h"
#import <QuartzCore/QuartzCore.h>
#import <GoogleMaps/GoogleMaps.h>

@interface EventView ()

@property int ticketPriceInt;
@property int newPrice;
@property (nonatomic, strong) NSMutableArray *eventDateArray;
@property (nonatomic, strong) NSMutableArray *eventTimeArray;
@property (nonatomic, strong) NSMutableArray *eventLargeIconArray;
@property (assign)            int tickets;
@property (readwrite)         GMSMapView *mapsView;
@property (nonnull,strong)    UIButton *getDirections;
@property                     CLLocationDegrees yourLatitude;
@property                     CLLocationDegrees yourLongitude;

@end

@implementation EventView

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.eventDateArray = self.eventList.eventDate;
    self.eventTimeArray = self.eventList.eventTime;
    self.eventLargeIconArray = self.eventList.eventLargeIcon;
    
    self.tickets = 1;
    self.imagesPageControl.currentPage = 0;
    self.imagesPageControl.numberOfPages = [self.eventLargeIconArray count];
    
    self.ticketPriceInt = [self.eventList.eventPrice intValue];
    
    self.eventOffer.text = self.eventList.eventOffer;
    self.eventTitle.text = self.eventList.eventTitle;
    self.eventVenue.text = self.eventList.eventLocation;
    self.eventDescription.text = self.eventList.eventDescription;
    self.eventImage.image = self.eventList.eventIcon;
    self.ticketPrice.text = [NSString stringWithFormat:@"Buy Now: $%d", self.ticketPriceInt];
    
    [self.numberofTickets setText:[NSString stringWithFormat:@"%d", self.tickets]];

    //GoogleMaps
    
    CLLocationCoordinate2D event = CLLocationCoordinate2DMake([self.eventList.longitude doubleValue], [self.eventList.latitude doubleValue]);
    GMSMarker *marker = [GMSMarker markerWithPosition:event];
    marker.title = self.eventList.eventTitle;
    marker.snippet = self.eventList.eventLocation;
    marker.map = self.mapsView;
    
    [self.mapsView animateToLocation: marker.position];
    [self.mapsView animateToCameraPosition:[GMSCameraPosition cameraWithLatitude:marker.position.latitude longitude:marker.position.longitude zoom:15.0f]];
    
    NSError *error;
    
    NSString *stylesString = @" [\n"
    "  {\n"
    "  \"featureType\": \"all\",\n"
    "  \"elementType\": \"geometry\",\n"
    "  \"stylers\": [\n"
    "              {\n"
    "              \"color\": \"#282828\"\n"
    "              }\n"
    "              ]\n"
    "  },\n"
    "  {\n"
    "  \"featureType\": \"all\",\n"
    "  \"elementType\": \"labels.text.stroke\",\n"
    "  \"stylers\": [\n"
    "              {\n"
    "              \"lightness\": \"-80\"\n"
    "              }\n"
    "              ]\n"
    "  },\n"
    "  {\n"
    "  \"featureType\": \"administrative\",\n"
    "  \"elementType\": \"labels.text.fill\",\n"
    "  \"stylers\": [\n"
    "              {\n"
    "              \"color\": \"#746855\"\n"
    "              }\n"
    "              ]\n"
    "  },\n"
    "  {\n"
    "  \"featureType\": \"administrative.locality\",\n"
    "  \"elementType\": \"labels.text.fill\",\n"
    "  \"stylers\": [\n"
    "              {\n"
    "              \"color\": \"#d59563\"\n"
    "              }\n"
    "              ]\n"
    "  },\n"
    "  {\n"
    "  \"featureType\": \"poi\",\n"
    "  \"elementType\": \"labels.text.fill\",\n"
    "  \"stylers\": [\n"
    "              {\n"
    "              \"color\": \"#d59563\"\n"
    "              }\n"
    "              ]\n"
    "  },\n"
    "  {\n"
    "  \"featureType\": \"poi.park\",\n"
    "  \"elementType\": \"geometry\",\n"
    "  \"stylers\": [\n"
    "              {\n"
    "              \"color\": \"#263c3f\"\n"
    "              }\n"
    "              ]\n"
    "  },\n"
    "  {\n"
    "  \"featureType\": \"poi.park\",\n"
    "  \"elementType\": \"labels.text.fill\",\n"
    "  \"stylers\": [\n"
    "              {\n"
    "              \"color\": \"#6b9a76\"\n"
    "              }\n"
    "              ]\n"
    "  },\n"
    "  {\n"
    "  \"featureType\": \"road\",\n"
    "  \"elementType\": \"geometry.fill\",\n"
    "  \"stylers\": [\n"
    "              {\n"
    "              \"color\": \"#2b3544\"\n"
    "              }\n"
    "              ]\n"
    "  },\n"
    "  {\n"
    "  \"featureType\": \"road\",\n"
    "  \"elementType\": \"labels.text.fill\",\n"
    "  \"stylers\": [\n"
    "              {\n"
    "              \"color\": \"#9ca5b3\"\n"
    "              }\n"
    "              ]\n"
    "  },\n"
    "  {\n"
    "  \"featureType\": \"road.arterial\",\n"
    "  \"elementType\": \"geometry.fill\",\n"
    "  \"stylers\": [\n"
    "              {\n"
    "              \"color\": \"#38414e\"\n"
    "              }\n"
    "              ]\n"
    "  },\n"
    "  {\n"
    "  \"featureType\": \"road.arterial\",\n"
    "  \"elementType\": \"geometry.stroke\",\n"
    "  \"stylers\": [\n"
    "              {\n"
    "              \"color\": \"#212a37\"\n"
    "              }\n"
    "              ]\n"
    "  },\n"
    "  {\n"
    "  \"featureType\": \"road.highway\",\n"
    "  \"elementType\": \"geometry.fill\",\n"
    "  \"stylers\": [\n"
    "              {\n"
    "              \"color\": \"#746855\"\n"
    "              }\n"
    "              ]\n"
    "  },\n"
    "  {\n"
    "  \"featureType\": \"road.highway\",\n"
    "  \"elementType\": \"geometry.stroke\",\n"
    "  \"stylers\": [\n"
    "              {\n"
    "              \"color\": \"#1f2835\"\n"
    "              }\n"
    "              ]\n"
    "  },\n"
    "  {\n"
    "  \"featureType\": \"road.highway\",\n"
    "  \"elementType\": \"labels.text.fill\",\n"
    "  \"stylers\": [\n"
    "              {\n"
    "              \"color\": \"#f3d19c\"\n"
    "              }\n"
    "              ]\n"
    "  },\n"
    "  {\n"
    "  \"featureType\": \"road.local\",\n"
    "  \"elementType\": \"geometry.fill\",\n"
    "  \"stylers\": [\n"
    "              {\n"
    "              \"color\": \"#38414e\"\n"
    "              }\n"
    "              ]\n"
    "  },\n"
    "  {\n"
    "  \"featureType\": \"road.local\",\n"
    "  \"elementType\": \"geometry.stroke\",\n"
    "  \"stylers\": [\n"
    "              {\n"
    "              \"color\": \"#212a37\"\n"
    "              }\n"
    "              ]\n"
    "  },\n"
    "  {\n"
    "  \"featureType\": \"transit\",\n"
    "  \"elementType\": \"geometry\",\n"
    "  \"stylers\": [\n"
    "              {\n"
    "              \"color\": \"#2f3948\"\n"
    "              }\n"
    "              ]\n"
    "  },\n"
    "  {\n"
    "  \"featureType\": \"transit.station\",\n"
    "  \"elementType\": \"labels.text.fill\",\n"
    "  \"stylers\": [\n"
    "              {\n"
    "              \"color\": \"#d59563\"\n"
    "              }\n"
    "              ]\n"
    "  },\n"
    "  {\n"
    "  \"featureType\": \"water\",\n"
    "  \"elementType\": \"geometry\",\n"
    "  \"stylers\": [\n"
    "              {\n"
    "              \"color\": \"#17263x\"\n"
    "              }\n"
    "              ]\n"
    "  },\n"
    "  {\n"
    "  \"featureType\": \"water\",\n"
    "  \"elementType\": \"labels.text.fill\",\n"
    "  \"stylers\": [\n"
    "              {\n"
    "              \"color\": \"#515c6d\"\n"
    "              }\n"
    "              ]\n"
    "  },\n"
    "  {\n"
    "  \"featureType\": \"water\",\n"
    "  \"elementType\": \"labels.text.stroke\",\n"
    "  \"stylers\": [\n"
    "              {\n"
    "              \"lightness\": \"-20\"\n"
    "              }\n"
    "              ]\n"
    "  },\n"
    "  ]";
    
    GMSMapStyle *style = [GMSMapStyle styleWithJSONString:stylesString error:&error];
    
    _mapsView.mapStyle = style;
    
    [self.directionsBackView insertSubview:self.viewDirections aboveSubview:self.mapsView];
    
    CLLocationDegrees yourlatitude = self.locationManager.location.coordinate.latitude;
    CLLocationDegrees yourlongitude = self.locationManager.location.coordinate.longitude;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    EventDates *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"eventDates" forIndexPath:indexPath];
    
    cell.eventDate.text = [self.eventDateArray objectAtIndex:indexPath.row];
    cell.eventTime.text = [self.eventTimeArray objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [self.eventDateArray count];
}

-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    return UIEdgeInsetsMake(10, 100, 0, 100);
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    EventDates *cell = [collectionView cellForItemAtIndexPath:indexPath];
    cell.highLightedBack.backgroundColor = [UIColor colorWithRed:69.0/255.0 green:59.0/255.0 blue:138.0/255.0 alpha:1.0];
}

-(void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath{
    EventDates *cell = [collectionView cellForItemAtIndexPath:indexPath];
    cell.highLightedBack.backgroundColor = [UIColor colorWithRed: 40/255.0 green:40/255.0 blue:40/255.0 alpha:1.0];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)increaseTickets:(id)sender {
    self.tickets++;
    [self.numberofTickets setText:[NSString stringWithFormat:@"%d", self.tickets]];
    
    self.newPrice = self.tickets*self.ticketPriceInt;
    self.ticketPrice.text = [NSString stringWithFormat:@"Buy Now: $%d", self.newPrice];
}

- (IBAction)decreaseTickets:(id)sender {
    self.tickets--;
    if(self.tickets <1){
        self.tickets = 1;
    }
    [self.numberofTickets setText:[NSString stringWithFormat:@"%d", self.tickets]];
    
    self.newPrice = self.tickets*self.ticketPriceInt;
    self.ticketPrice.text = [NSString stringWithFormat:@"Buy Now: $%d", self.newPrice];
}

//ints of Arrays
int largeIconsInt = 4;

- (IBAction)handleSwipe:(id)sender {
    //NSLog(@"swiped");
    
    //Animation for background
    //Left
    CATransition *transistionLeft = [CATransition animation];
    transistionLeft.duration = 0.4f;
    transistionLeft.timingFunction = [CAMediaTimingFunction functionWithName: kCAMediaTimingFunctionEaseInEaseOut];
    transistionLeft.type = kCATransitionFade;
    transistionLeft.subtype = kCATransitionFromLeft;
    
    //Right
    CATransition *transitionRight = [CATransition animation];
    transitionRight.duration = 0.4f;
    transitionRight.timingFunction = [CAMediaTimingFunction functionWithName: kCAMediaTimingFunctionEaseInEaseOut];
    transitionRight.type = kCATransitionFade;
    transitionRight.subtype = kCATransitionFromRight;

    UISwipeGestureRecognizerDirection direction = [(UISwipeGestureRecognizer*) sender direction];
    
    switch (direction) {
        case UISwipeGestureRecognizerDirectionLeft:
            largeIconsInt++;
            if (_imagesPageControl.currentPage == _imagesPageControl.numberOfPages -1 ) {
                self.imagesPageControl.currentPage =0;
            }
            else{
                self.imagesPageControl.currentPage +=1;
            }
            [_eventImage.layer addAnimation:transitionRight forKey:nil];
            break;
        case UISwipeGestureRecognizerDirectionRight:
            largeIconsInt--;
            if (_imagesPageControl.currentPage == 0) {
                self.imagesPageControl.currentPage = 4;
            }
            else{
                self.imagesPageControl.currentPage -=1;
            }
            [_eventImage.layer addAnimation:transistionLeft forKey:nil];
        default:
            break;
    }
    
    //Ensure array resets
    largeIconsInt = (largeIconsInt < 0) ? ([self.eventLargeIconArray count] -1):
    largeIconsInt % [self.eventLargeIconArray count];
    _eventImage.image = [UIImage imageNamed:[self.eventLargeIconArray objectAtIndex:largeIconsInt]];
    
}

- (IBAction)getDirections:(id)sender {
    
    CLLocationCoordinate2D event = CLLocationCoordinate2DMake([self.eventList.longitude doubleValue], [self.eventList.latitude doubleValue]);
    GMSMarker *marker = [GMSMarker markerWithPosition:event];
    marker.title = self.eventList.eventTitle;
    marker.snippet = self.eventList.eventLocation;
    marker.map = self.mapsView;
    
    _locationManager = [[CLLocationManager alloc]init];
    _locationManager.delegate = self;
    _locationManager.distanceFilter = kCLDistanceFilterNone;
    _locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    [self.locationManager startUpdatingLocation];
    
    NSString *urlstring = [NSString stringWithFormat:@"http://maps.google.com/?saddr=%lf,%lf&daddr=%lf,%lf", _locationManager.location.coordinate.latitude, _locationManager.location.coordinate.longitude, marker.position.latitude, marker.position.longitude];
    
    NSLog(@"Lat:%f Lon:%f", _locationManager.location.coordinate.latitude, _locationManager.location.coordinate.longitude);
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlstring] options:@{} completionHandler:nil];
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray*)locations{
    CLLocation *location = [locations lastObject];
}

@end
