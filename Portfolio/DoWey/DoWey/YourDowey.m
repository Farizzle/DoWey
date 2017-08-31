//
//  YourDowey.m
//  DoWey
//
//  Created by Faris Zaman on 16/07/2017.
//  Copyright © 2017 DoWey. All rights reserved.
//

#import "YourDowey.h"
#import "EventsList.h"
#import "friendsCollectionList.h"
#import "partyHardCollectionList.h"
#import "romanticCollectionList.h"
#import "EventsCell.h"
#import "EventView.h"
#import "Collections.h"
#import "GroupOffers.h"
#import <QuartzCore/QuartzCore.h>


@interface YourDowey ()


@property (nonatomic, strong) NSString *friendsIcon;
@property (nonatomic, strong) NSString *partyHardIcon;
@property (nonatomic, strong) NSString *romanticIcon;
@property (nonatomic, strong) NSMutableArray *collectionIconArray;
@property (nonatomic, strong) NSMutableArray *eventOfferArray;
@property (nonatomic, strong) NSMutableArray *eventTitleArray;
@property (nonatomic, strong) NSMutableArray *eventLocationArray;
@property (nonatomic, strong) NSMutableArray *eventIconArray;
@property (nonatomic, strong) NSMutableArray *eventPriceArray;
@property (nonatomic, strong) NSMutableArray *eventTypeArray;
@property (nonatomic, strong) NSMutableArray *eventDateArray;
@property (nonatomic, strong) EventsCell *cell;
@property (nonatomic, strong) GroupOffers *collectionsCell;
@property (nonatomic, strong) UICollectionView *yourDowey;

@end

@implementation YourDowey

- (void)viewDidLoad {
    [super viewDidLoad];
    
    for (NSUInteger index = 0; (index < 1) ; index++){

    friendsCollectionList *friendsList = [[friendsCollectionList alloc]initWithIndex:index];
    partyHardCollectionList *partyHardList = [[partyHardCollectionList alloc] initWithIndex:index];
    romanticCollectionList *romanticList = [[romanticCollectionList alloc]initWithIndex:index];
    
    self.friendsIcon = friendsList.friendsCollectionIcon;
    self.partyHardIcon = partyHardList.partyCollectionIcon;
    self.romanticIcon = romanticList.romanticCollectionIcon;
        
    self.collectionIconArray = [[NSMutableArray alloc] initWithObjects:self.friendsIcon,self.partyHardIcon, self.romanticIcon, nil];
    }
    
    self.eventOfferArray = [[NSMutableArray alloc]init];
    self.eventTitleArray = [[NSMutableArray alloc]init];
    self.eventLocationArray = [[NSMutableArray alloc]init];
    self.eventIconArray = [[NSMutableArray alloc]init];
    self.eventPriceArray = [[NSMutableArray alloc]init];
    self.eventTypeArray = [[NSMutableArray alloc]init];
    self.eventDateArray = [[NSMutableArray alloc]init];
    
        
    for (NSUInteger index = 0; (index < 9) ; index++){
        
        EventsList *eventList = [[EventsList alloc] initWithIndex:index];
        
        NSString *individualOffer = eventList.eventOffer;
        NSString *individualEventTitle = eventList.eventTitle;
        NSString *individualEventLocation = eventList.eventLocation;
        NSString *individualEventIcon = eventList.eventIcon;
        NSString *individualEventPrice = eventList.eventPrice;
        NSString *individualEventType = eventList.eventType;
        NSArray *eventDate = eventList.eventDate;
        
        
        [self.eventOfferArray addObject:individualOffer];
        [self.eventTitleArray addObject:individualEventTitle];
        [self.eventLocationArray addObject:individualEventLocation];
        [self.eventIconArray addObject:individualEventIcon];
        [self.eventPriceArray addObject:individualEventPrice];
        [self.eventTypeArray addObject:individualEventType];
        [self.eventDateArray addObjectsFromArray:eventDate];
        
        }
    
    //PROFILE VIEW
    //Rounded Buttons
    self.rewardsButton.image = [UIImage imageNamed:@"Reward.jpg"];
    //self.rewardsButton.layer.cornerRadius = _rewardsButton.frame.size.width / 300.0;
    self.contactUsButton.image = [UIImage imageNamed:@"Contact.jpeg"];
    //self.contactUsButton.layer.cornerRadius = _contactUsButton.frame.size.width / 2.0;
    self.messagesButton.image = [UIImage imageNamed:@"Messages.jpg"];
    //self.messagesButton.layer.cornerRadius = _messagesButton.frame.size.width / 2.0;
    self.shareButton.image = [UIImage imageNamed:@"Share.jpg"];
    //self.shareButton.layer.cornerRadius = _shareButton.frame.size.width / 2.0;
    self.ticketsButton.image = [UIImage imageNamed:@"Ticket.jpg"];
    //self.ticketsButton.layer.cornerRadius = _ticketsButton.frame.size.width / 2.0;
    self.settingsButton.image = [UIImage imageNamed:@"Settings.jpg"];
    //self.settingsButton.layer.cornerRadius = _settingsButton.frame.size.width / 2.0;
    self.profilePicture.layer.cornerRadius = _profilePicture.frame.size.width / 2.0;
    self.profilePicture.clipsToBounds = YES;
    
    //FaceBook
    RegistrationPage *facebook = [[RegistrationPage alloc]init];
    
    if ([FBSDKAccessToken currentAccessToken]) {
        [[[FBSDKGraphRequest alloc] initWithGraphPath:@"me" parameters:nil]
         startWithCompletionHandler:^(FBSDKGraphRequestConnection *connection, id result, NSError *error) {
             if (!error) {
                 _profileName.text = [result valueForKey:@"name"];
                 _profilePicture.profileID = [result valueForKey:@"id"];
             }
         }];
    }
   
    //ViewDidLoad layout and images
    UICollectionViewFlowLayout *flow= [[UICollectionViewFlowLayout alloc]init];
    flow.itemSize = CGSizeMake(414.0, 200.0);
    flow.scrollDirection = UICollectionViewScrollDirectionVertical;
    flow.minimumInteritemSpacing = 0;
    flow.minimumLineSpacing = 1;
    
    [self.yourEvents setCollectionViewLayout:flow];
    
    
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    
    if (collectionView == self.yourEvents){
        return 1;

    }
    else if (collectionView == self.yourCollections){
        return 1;
    }
    return 0;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    if (collectionView == self.yourEvents) {
        return [self.eventTitleArray count];
    } else if (collectionView == self.yourCollections){
        return 3;
    }
    return 0;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    if (collectionView == self.yourEvents) {
        EventsCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"eventsCell" forIndexPath:indexPath];
        
        cell.eventOffer.text = [self.eventOfferArray objectAtIndex:indexPath.row];
        cell.eventImage.image = [self.eventIconArray objectAtIndex:indexPath.row];
        cell.eventTitle.text = [self.eventTitleArray objectAtIndex:indexPath.row];
        cell.eventLocation.text = [self.eventLocationArray objectAtIndex:indexPath.row];
        cell.eventPrice.text = [NSString stringWithFormat:@"$%@",[self.eventPriceArray objectAtIndex:indexPath.row]];
        cell.eventType.text = [self.eventTypeArray objectAtIndex:indexPath.row];
        
        return cell;
    }
    else if (collectionView == self.yourCollections){
        GroupOffers *collections = [collectionView dequeueReusableCellWithReuseIdentifier:@"collectionCell" forIndexPath:indexPath];
        
        collections.groupIcon.image = [UIImage imageNamed: [self.collectionIconArray objectAtIndex:indexPath.row]];
        return collections;
    }
    return nil;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
}


-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return CGSizeMake(414.0, 200.0);
}

-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    return UIEdgeInsetsMake(0, 0, 0, 0);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqual: @"showEventDetail"]){
        if([self.yourEvents indexPathForCell:sender]){
            NSIndexPath *index = [self.yourEvents indexPathForCell:sender];
            EventView *collectionView = (EventView*)segue.destinationViewController;
            collectionView.eventList = [[EventsList alloc]initWithIndex:index.row];
        }
    }
    if ([segue.identifier isEqual: @"showCollection"]){
        if([self.yourCollections indexPathForCell:sender]){
            NSIndexPath *index2 = [self.yourCollections indexPathForCell:sender];
            Collections *collectionView2 = (Collections*)segue.destinationViewController;
            collectionView2.friendsList = [[friendsCollectionList alloc]initWithIndex:index2.row];
        }
    }
}


//ACTIONS

- (IBAction)yourDoweyButton:(id)sender {
    self.yourDoweyUnderline.backgroundColor = [UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0];
    self.profileUnderline.backgroundColor = [UIColor colorWithRed:40.0/255.0 green:40.0/255.0 blue:40.0/255.0 alpha:1.0];
    self.othersDoweyUnderline.backgroundColor = [UIColor colorWithRed:40.0/255.0 green:40.0/255.0 blue:40.0/255.0 alpha:1.0];
    self.changeMoodButton.hidden = NO;
    self.header.text = @"recommended for you";
    self.InterchangingBackground.hidden = NO;
    self.profileBackground.hidden = YES;
    self.collectionsBackground.hidden = YES;
}

- (IBAction)othersDoweyButton:(id)sender {
    self.yourDoweyUnderline.backgroundColor = [UIColor colorWithRed:40.0/255.0 green:40.0/255.0 blue:40.0/255.0 alpha:1.0];
    self.profileUnderline.backgroundColor = [UIColor colorWithRed:40.0/255.0 green:40.0/255.0 blue:40.0/255.0 alpha:1.0];
    self.othersDoweyUnderline.backgroundColor = [UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0];
    self.changeMoodButton.hidden = YES;
    self.header.text = @"today's events";
    self.InterchangingBackground.hidden = YES;
    self.profileBackground.hidden = YES;
    self.collectionsBackground.hidden = NO;
}


- (IBAction)profileButton:(id)sender {
    self.yourDoweyUnderline.backgroundColor = [UIColor colorWithRed:40.0/255.0 green:40.0/255.0 blue:40.0/255.0 alpha:1.0];
    self.profileUnderline.backgroundColor = [UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0];
    self.othersDoweyUnderline.backgroundColor = [UIColor colorWithRed:40.0/255.0 green:40.0/255.0 blue:40.0/255.0 alpha:1.0];
    self.profileBackground.hidden = NO;
    self.InterchangingBackground.hidden = YES;
    self.collectionsBackground.hidden = YES;
}

- (IBAction)logOut:(id)sender {
    FBSDKLoginManager *loginManager = [[FBSDKLoginManager alloc]init];
    [loginManager logOut];
    [FBSDKAccessToken setCurrentAccessToken:nil];
    [FBSDKProfile setCurrentProfile:nil];
    
    RegistrationPage *returnHome = [self.storyboard instantiateViewControllerWithIdentifier:@"LoginPage"];
    [self presentViewController:returnHome animated:YES completion:nil];
    }


//FBACTIONS

@end
