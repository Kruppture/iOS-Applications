//
//  ViewController.h
//  LicensePlate
//
//  Created by Konnor Krupp on 6/27/13.
//  Copyright (c) 2013 Konnor Krupp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelpViewController : UIViewController <UIAlertViewDelegate>

@property (strong,nonatomic) NSMutableArray *checked2;
@property (strong, nonatomic) NSString *doit;
- (IBAction)resetButton:(id)sender;

-(IBAction)reviewButton:(id)sender;

@end
