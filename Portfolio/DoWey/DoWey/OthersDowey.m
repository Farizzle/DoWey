//
//  OthersDowey.m
//  DoWey
//
//  Created by Faris Zaman on 16/07/2017.
//  Copyright © 2017 DoWey. All rights reserved.
//

#import "OthersDowey.h"
#import "EventsCell.h"
#import "EventsList.h"

@interface OthersDowey ()

@property (nonatomic, strong) NSMutableArray *eventTitleArray;
@property (nonatomic, strong) NSMutableArray *eventLocationArray;
@property (nonatomic, strong) NSMutableArray *eventIconArray;
@property (nonatomic, strong) NSMutableArray *eventPriceArray;
@property (nonatomic, strong) NSMutableArray *eventTypeArray;

@end

@implementation OthersDowey

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 8;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.eventTitleArray = [[NSMutableArray alloc]initWithCapacity:8];
    self.eventLocationArray = [[NSMutableArray alloc]initWithCapacity:8];
    self.eventIconArray = [[NSMutableArray alloc]init];
    self.eventPriceArray = [[NSMutableArray alloc]initWithCapacity:8];
    self.eventTypeArray = [[NSMutableArray alloc]initWithCapacity:8];
    
    for (NSUInteger index = 0; (index < 8) ; index++){
        
        EventsList *eventList = [[EventsList alloc] initWithIndex:index];
        
        NSString *individualEventTitle = eventList.eventTitle;
        NSString *individualEventLocation = eventList.eventLocation;
        
        NSString *individualEventIcon = eventList.eventIcon;
        NSString *individualEventPrice = eventList.eventPrice;
        NSString *individualEventType = eventList.eventType;
        
        [self.eventTitleArray addObject:individualEventTitle];
        [self.eventLocationArray addObject:individualEventLocation];
        [self.eventIconArray addObject:individualEventIcon];
        [self.eventPriceArray addObject:individualEventPrice];
        [self.eventTypeArray addObject:individualEventType];
        
    }
    
    UICollectionViewFlowLayout *flow= [[UICollectionViewFlowLayout alloc]init];
    flow.itemSize = CGSizeMake(414.0, 200.0);
    flow.scrollDirection = UICollectionViewScrollDirectionVertical;
    flow.minimumInteritemSpacing = 0;
    flow.minimumLineSpacing = 1;
    
    [self.othersEvents setCollectionViewLayout:flow];

    // Do any additional setup after loading the view.
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    EventsCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"eventsCell" forIndexPath:indexPath];
    
    //NSString *imagesString = [self.eventIconArray objectAtIndex:indexPath.row];
    
    cell.eventImage.image = [self.eventIconArray objectAtIndex:indexPath.row];
    cell.eventTitle.text = [self.eventTitleArray objectAtIndex:indexPath.row];
    cell.eventLocation.text = [self.eventLocationArray objectAtIndex:indexPath.row];
    cell.eventPrice.text = [self.eventPriceArray objectAtIndex:indexPath.row];
    cell.eventType.text = [self.eventTypeArray objectAtIndex:indexPath.row];
    
    return cell;
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
