//
//  ViewController.m
//  GamDBit
//
//  Created by Andreas Buff on 12/12/15.
//  Copyright © 2015 Andreas Buff. All rights reserved.
//

#import "ODBTrainNumberViewController.h"

#import "ODBBetInputViewController.h"
#import "ODBTrainNumberTableViewCell.h"

static NSString * const cellId = @"train number cell";

@interface ODBTrainNumberViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableview;
@property (strong, nonatomic) NSArray *trainNumbers;
@property (strong, nonatomic) NSArray *colors;
@property (nonatomic) NSInteger lastSelectedRow;
@end

@implementation ODBTrainNumberViewController



#pragma mark - TableviewDatasource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.trainNumbers.count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    ODBTrainNumberTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    if (!cell) {
        cell = [ODBTrainNumberTableViewCell new];
    }
    cell.trainNumberLabel.text = self.trainNumbers[indexPath.row];
    cell.backgroundColor = self.colors[indexPath.row];
    
    return cell;
}

#pragma mark - TableviewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ODBBetInputViewController *betVC = [ODBBetInputViewController new];
    self.lastSelectedRow = indexPath.row;
    [self performSegueWithIdentifier:@"show bet input" sender:self];
}

#pragma mark - Other

- (void) setup
{
    self.trainNumbers = @[@"ICE 1090",
                          @"EC 1091",
                          @"ICE 1092",
                          @"RB 1093",
                          @"EC 1094",
                          @"ICE 1090",
                          @"RB 1090",
                          @"ICE 1090",
                          @"ICE 6090",
                          @"EC 391",
                          @"ICE 792",
                          @"RB 23",
                          @"EC 667",
                          @"ICE 190",
                          @"RB 109",
                          @"ICE 90"];
    CGFloat zwei55 = 255.0;
    self.colors = @[[UIColor colorWithRed:217.0 / zwei55 green:91.0 / zwei55 blue:67.0 / zwei55 alpha:1.0],
                    [UIColor colorWithRed:192.0 / zwei55 green:41.0 / zwei55 blue:66.0 / zwei55 alpha:1.0],
                    [UIColor colorWithRed:84.0 / zwei55 green:36 / zwei55 blue:55.0 / zwei55 alpha:1.0],
                    [UIColor colorWithRed:83.0 / zwei55 green:119.0 / zwei55 blue:122.0 / zwei55 alpha:1.0],
                    [UIColor colorWithRed:22.0 / zwei55 green:147.0 /zwei55 blue:167.0 / zwei55 alpha:1.0],
                    [UIColor colorWithRed:94.0 / zwei55 green:65.0 / zwei55 blue:47.0 / zwei55 alpha:1.0],
                    [UIColor colorWithRed:96 / zwei55 green:120 / zwei55 blue:72 / zwei55 alpha:1.0],
                    [UIColor colorWithRed:78 / zwei55 green:57 / zwei55 blue:93 / zwei55 alpha:1.0],
                    [UIColor colorWithRed:217.0 / zwei55 green:91.0 / zwei55 blue:67.0 / zwei55 alpha:1.0],
                    [UIColor colorWithRed:192.0 / zwei55 green:41.0 / zwei55 blue:66.0 / zwei55 alpha:1.0],
                    [UIColor colorWithRed:84.0 / zwei55 green:36 / zwei55 blue:55.0 / zwei55 alpha:1.0],
                    [UIColor colorWithRed:83.0 / zwei55 green:119.0 / zwei55 blue:122.0 / zwei55 alpha:1.0],
                    [UIColor colorWithRed:22.0 / zwei55 green:147.0 /zwei55 blue:167.0 / zwei55 alpha:1.0],
                    [UIColor colorWithRed:94.0 / zwei55 green:65.0 / zwei55 blue:47.0 / zwei55 alpha:1.0],
                    [UIColor colorWithRed:96 / zwei55 green:120 / zwei55 blue:72 / zwei55 alpha:1.0],
                    [UIColor colorWithRed:78 / zwei55 green:57 / zwei55 blue:93 / zwei55 alpha:1.0]];
}

#pragma mark - Other

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ODBBetInputViewController *dvc = segue.destinationViewController;
    dvc.trainNum = self.trainNumbers[self.lastSelectedRow];
    dvc.backColor = self.colors[self.lastSelectedRow];
}

#pragma - Life Cycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    [self setup];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.barTintColor = [UIColor grayColor];
    self.navigationController.navigationBar.translucent = YES;
}


@end
