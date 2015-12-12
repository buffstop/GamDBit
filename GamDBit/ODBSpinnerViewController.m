//
//  ODBSpinnerViewController.m
//  GamDBit
//
//  Created by Andreas Buff on 12/12/15.
//  Copyright © 2015 Andreas Buff. All rights reserved.
//

#import "ODBSpinnerViewController.h"

#import "ODBFinalViewController.h"
@interface ODBSpinnerViewController ()

@end

@implementation ODBSpinnerViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ODBFinalViewController *dvc = segue.destinationViewController;
    dvc.backColor = self.backColor;
    dvc.trainNum = self.trainNum;
}

- (void)viewDidLoad
{
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


    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(7.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self performSegueWithIdentifier:@"show final" sender:self];
    });
}


@end
