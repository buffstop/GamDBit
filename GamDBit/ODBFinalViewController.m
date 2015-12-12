//
//  ODBFinalViewController.m
//  GamDBit
//
//  Created by Andreas Buff on 12/12/15.
//  Copyright © 2015 Andreas Buff. All rights reserved.
//

#import "ODBFinalViewController.h"

@interface ODBFinalViewController ()

@end

@implementation ODBFinalViewController

- (IBAction)againPressed:(UIButton *)sender
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = self.trainNum;
    self.navigationController.navigationBar.barTintColor = self.backColor;
    self.navigationController.navigationBar.translucent = NO;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    [self.navigationController.navigationBar setTitleTextAttributes:
     @{NSForegroundColorAttributeName:[UIColor whiteColor]}];


    
//    CGColorRef colorRef = [self.backColor CGColor];
//    const CGFloat *_components = CGColorGetComponents(colorRef);
//    CGFloat red     = _components[0];
//    CGFloat green = _components[1];
//    CGFloat blue   = _components[2];
//    
//    UIColor *backColor = [UIColor colorWithRed:red green:green blue:blue alpha:0.5];
//    self.view.backgroundColor = backColor;
    self.view.backgroundColor = self.backColor;
}


@end
