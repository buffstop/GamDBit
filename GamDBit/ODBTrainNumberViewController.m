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
    //TODO: set trainnumber
    [self.navigationController pushViewController:betVC animated:YES];
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
                          @"ICE 1090"];
    self.colors = @[[UIColor greenColor],
                    [UIColor redColor],
                    [UIColor yellowColor],
                    [UIColor purpleColor],
                    [UIColor grayColor],
                    [UIColor blueColor],
                    [UIColor greenColor],
                    [UIColor redColor]];
}

#pragma - Life Cycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setup];
}


@end
