//
//  NavigationViewController.m
//  quizzMe
//
//  Created by Faris Zaman on 10/04/2017.
//  Copyright © 2017 --. All rights reserved.
//

#import "NavigationViewController.h"
#import "SWRevealViewController.h"

@interface NavigationViewController ()

@end

@implementation NavigationViewController {
    NSArray *menu;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.interactivePopGestureRecognizer.enabled = self;
    
    menu = @[@"profile",@"scores",@"invite", @"faqs"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [menu count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *cellIdentifier = [menu objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue isKindOfClass:[SWRevealViewControllerSeguePushController class]]) {
        SWRevealViewControllerSeguePushController *swSegue = (SWRevealViewControllerSeguePushController*) segue;
        
        [swSegue perform];
        }
}


@end
