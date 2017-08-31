//
//  CustomizeMyDowey.m
//  DoWey
//
//  Created by Faris Zaman on 16/07/2017.
//  Copyright © 2017 DoWey. All rights reserved.
//

#import "CustomizeMyDowey.h"
#import "Moods.h"

@interface CustomizeMyDowey ()

@property (strong, nonatomic) NSArray *moodImages;
@property (strong, nonatomic) NSArray *moodTitles;

@end

@implementation CustomizeMyDowey

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [self.moodImages count];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    Moods *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Mood" forIndexPath:indexPath];
    
    NSString *myMoodString = [self.moodImages objectAtIndex:indexPath.row];
    
    cell.moodImageView.image = [UIImage imageNamed:myMoodString];
    cell.moodLabel.text = [self.moodTitles objectAtIndex:indexPath.row];
    cell.moodLabel.lineBreakMode = NSLineBreakByWordWrapping;
    cell.moodLabel.numberOfLines = 0;
    cell.layer.cornerRadius = cell.frame.size.width / 2.0;
    
    return cell;
}


-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return CGSizeMake(135.0, 135.0);
}

-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    return UIEdgeInsetsMake(0, 0, 0, 0);
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    Moods *cell = [collectionView cellForItemAtIndexPath:indexPath];
    cell.highLightedMood.backgroundColor = [UIColor colorWithRed:155.0/255.0 green:35.0/255.0 blue:255.0/255.0 alpha:1.0];
    cell.moodImageView.hidden = YES;
}

-(void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath{
    Moods *cell = [collectionView cellForItemAtIndexPath:indexPath];
    cell.highLightedMood.backgroundColor = [UIColor colorWithRed:85.0/255.0 green:85.0/255.0 blue:85.0/255.0 alpha:0.6];
    cell.moodImageView.hidden = NO;
}

-(void)collectionView:(UICollectionView *)collectionView didHighlightItemAtIndexPath:(NSIndexPath *)indexPath{
    
}

-(void)collectionView:(UICollectionView *)collectionView didUnhighlightItemAtIndexPath:(NSIndexPath *)indexPath{
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.moodImages = @[@"ComedyGirl.jpg",
                        @"Animals.jpeg",
                        @"Nature.jpg",
                        @"Date.jpg",
                        @"WeirdMask.jpg",
                        @"ExpoTable.jpg",
                        @"Fest.jpg",
                        @"FoodPic.jpg",
                        @"ArtGallery.jpg",
                        @"Sporty.jpg",
                        @"Single.jpg",
                        @"Networking.jpg",
                        @"Theater.jpg",
                        @"Drinks.jpg",
                        @"Gay.jpg",
                        @"Fash.jpg",];
    
    self.moodTitles = @[@"COMEDY",
                        @"ANIMALS",
                        @"NATURE",
                        @"DATE",
                        @"WEIRD",
                        @"EXPOS",
                        @"FESTIVAL",
                        @"FOOD",
                        @"ART",
                        @"SPORTS",
                        @"SINGLE",
                        @"NETWORK",
                        @"THEATER",
                        @"DRINKS",
                        @"GAY",
                        @"FASHION",];

    self.myMoods.allowsMultipleSelection = YES;
    
    UICollectionViewFlowLayout *flow= [[UICollectionViewFlowLayout alloc]init];
    flow.itemSize = CGSizeMake(135.0, 135.0);
    flow.scrollDirection = UICollectionViewScrollDirectionVertical;
    flow.minimumInteritemSpacing = 0;
    flow.minimumLineSpacing = 4;
    
    [self.myMoods setCollectionViewLayout:flow];
    
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"CustomizeWallpaper.jpg"]]];
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
