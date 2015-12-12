//
//  ODBRunningGameViewController.h
//  GamDBit
//
//  Created by Andreas Buff on 12/12/15.
//  Copyright © 2015 Andreas Buff. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ODBRunningGameViewController : UIViewController
@property (strong, nonatomic) NSString *trainNum;
@property (strong, nonatomic) UIColor *backColor;
@property (strong, nonatomic) NSNumber *time;

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;


@end
