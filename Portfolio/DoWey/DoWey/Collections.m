//
//  Collections.m
//  DoWey
//
//  Created by Faris Zaman on 01/08/2017.
//  Copyright © 2017 DoWey. All rights reserved.
//

#import "Collections.h"
#import "friendsCollectionList.h"
#import "romanticCollectionList.h"
#import "partyHardCollectionList.h"
#import <QuartzCore/QuartzCore.h>

@interface Collections ()

@property (nonatomic, strong) NSMutableArray *collectionEventTitle;
@property (nonatomic, strong) NSMutableArray *collectionEventPrice;
@property (nonatomic, strong) NSMutableArray *collectionEventIcon;

@end

@implementation Collections

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.collectionEventIcon = self.friendsList.friendsEventIcon;
    self.collectionEventTitle = self.friendsList.friendsEventTitle;
    self.collectionEventPrice = self.friendsList.friendsEventPrice;
    
    // Do any additional setup after loading the view.
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
