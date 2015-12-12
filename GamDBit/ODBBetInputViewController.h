//
//  ODBBetInputViewController.h
//  GamDBit
//
//  Created by Andreas Buff on 12/12/15.
//  Copyright © 2015 Andreas Buff. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ODBBetInputViewController : UIViewController
@property (strong, nonatomic) NSString *trainNum;
@property (strong, nonatomic) UIColor *backColor;
@property (weak, nonatomic) IBOutlet UILabel *trainNumberLabel;
@property (weak, nonatomic) IBOutlet UITextField *minutesInput;

@end
