//
//  MainViewController.m
//  LicensePlate
//
//  Created by Konnor Krupp on 6/27/13.
//  Copyright (c) 2013 Konnor Krupp. All rights reserved.
//

#import "HelpViewController.h"
#import "StateViewController.h"

@interface HelpViewController () 

@end

@implementation HelpViewController {
    
}

@synthesize checked2 = _checked2;

- (void)viewDidLoad
{
    [super viewDidLoad];
    _doit = @"no";
	}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

- (IBAction)resetButton:(id)sender {
    
    NSString *string1 = [_checked2 objectAtIndex:5];
    NSLog(@"%@",string1);
     _checked2 = [NSMutableArray arrayWithObjects:@"NO", @"NO",@"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", nil];
    [self showAlert];
    
}

-(IBAction)reviewButton:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://itunes.apple.com/us/app/the-plate-game/id818933978?mt=8&uo=4"]];
}

- (void) showAlert {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Reset Progress?" message:@"Pressing reset will permanently delete all progress. You will have to start the game over. Are you sure you wish to reset?" delegate:self
        cancelButtonTitle:@"Cancel"
        otherButtonTitles:@"Reset", nil];
    [alert show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    // the user clicked one of the OK/Cancel buttons
    if (buttonIndex == 0)
    {
        NSLog(@"Cancelled");
    }
    else
    {
        NSLog(@"Reset");
        _doit = @"yup";
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([_doit  isEqual: @"yup"]) {
        StateViewController *stateController = (StateViewController *)segue.destinationViewController;
        
        stateController.checked = _checked2;
        stateController.yupcheck = _doit;
        NSLog(@"clear");
        
    }
}
@end
