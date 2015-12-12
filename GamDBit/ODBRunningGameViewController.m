//
//  ODBRunningGameViewController.m
//  GamDBit
//
//  Created by Andreas Buff on 12/12/15.
//  Copyright © 2015 Andreas Buff. All rights reserved.
//

#import "ODBRunningGameViewController.h"

#import "ODBSpinnerViewController.h"

@interface ODBRunningGameViewController ()

@end

@implementation ODBRunningGameViewController

- (IBAction)arrivedPressed:(UIButton *)sender
{
    //TODO: nothing todo :-)
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ODBSpinnerViewController *dvc = segue.destinationViewController;
    dvc.backColor = self.backColor;
    dvc.trainNum = self.trainNum;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = self.trainNum;
    self.navigationController.navigationBar.barTintColor = self.backColor;
    self.navigationController.navigationBar.translucent = NO;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    [self.navigationController.navigationBar setTitleTextAttributes:
     @{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    self.navigationItem.hidesBackButton = YES;

    
    //    CGColorRef colorRef = [self.backColor CGColor];
    //    const CGFloat *_components = CGColorGetComponents(colorRef);
    //    CGFloat red     = _components[0];
    //    CGFloat green = _components[1];
    //    CGFloat blue   = _components[2];
    //
    //    UIColor *backColor = [UIColor colorWithRed:red green:green blue:blue alpha:0.5];
    //    self.view.backgroundColor = backColor;
    self.view.backgroundColor = self.backColor;
    
    self.timeLabel.text = [NSString stringWithFormat:@"%@ min", [self.time stringValue]];
    
//    UIBarButtonItem *newBackButton = [[UIBarButtonItem alloc] initWithTitle:@"Back"
//                                                                      style:UIBarButtonItemStylePlain
//                                                                     target:nil
//                                                                     action:nil];
//    self.navigationItem.leftBarButtonItem = newBackButton;
}


@end
