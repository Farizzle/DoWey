//
//  MapStyles.m
//  DoWey
//
//  Created by Faris Zaman on 28/07/2017.
//  Copyright © 2017 DoWey. All rights reserved.
//



#import "MapStyles.h"
#import <GoogleMaps/GoogleMaps.h>

static NSString *const kNormalType = @"Normal";
static NSString *const kRetroType = @"Retro";
static NSString *const kGrayscaleType = @"Grayscale";
static NSString *const kNightType = @"Night";
static NSString *const kNoPOIsType = @"No business points of interest, no transit";

@interface MapStyles () {

UIBarButtonItem *_barButtonItem;
GMSMapView *_mapView;
GMSMapStyle *_retroStyle;
GMSMapStyle *_grayscaleStyle;
GMSMapStyle *_nightStyle;
GMSMapStyle *_noPOIsStyle;
    
}
@end

@implementation MapStyles

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL *retroURL = [[NSBundle mainBundle] URLForResource:@"mapstyle-retro"
                                              withExtension:@"json"];
    _retroStyle = [GMSMapStyle styleWithContentsOfFileURL:retroURL error:NULL];
    
    NSURL *grayscaleURL = [[NSBundle mainBundle] URLForResource:@"mapstyle-silver"
                                                  withExtension:@"json"];
    _grayscaleStyle = [GMSMapStyle styleWithContentsOfFileURL:grayscaleURL error:NULL];
    
    NSURL *nightURL = [[NSBundle mainBundle] URLForResource:@"mapstyle-night"
                                              withExtension:@"json"];
    _nightStyle = [GMSMapStyle styleWithContentsOfFileURL:nightURL error:NULL];
    
    NSString *noPOIsString = @" [\n"
    "  {\n"
    "  \"featureType\": \"poi.business\",\n"
    "  \"elementType\": \"all\",\n"
    "  \"stylers\": [\n"
    "              {\n"
    "              \"visibility\": \"off\"\n"
    "              }\n"
    "              ]\n"
    "  },\n"
    "  {\n"
    "  \"featureType\": \"transit\",\n"
    "  \"elementType\": \"all\",\n"
    "  \"stylers\": [\n"
    "              {\n"
    "              \"visibility\": \"off\"\n"
    "              }\n"
    "              ]\n"
    "  }\n"
    "  ]";
    _noPOIsStyle = [GMSMapStyle styleWithJSONString:noPOIsString error:NULL];
    
    GMSCameraPosition *camera =
    [GMSCameraPosition cameraWithLatitude:-33.868 longitude:151.2086 zoom:12];
    
    _mapView = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    self.view = _mapView;
    
    _mapView.mapStyle = _retroStyle;
    
    UIBarButtonItem *styleButton = [[UIBarButtonItem alloc] initWithTitle:@"Style"
                                                                    style:UIBarButtonItemStyleBordered
                                                                   target:self
                                                                   action:@selector(changeMapStyle:)];
    self.navigationItem.rightBarButtonItem = styleButton;
    self.navigationItem.title = kRetroType;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
