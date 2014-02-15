//
//  MainViewController.m
//  LicensePlate
//
//  Created by Konnor Krupp on 6/27/13.
//  Copyright (c) 2013 Konnor Krupp. All rights reserved.
//

#import "MainViewController.h"


@interface MainViewController ()

@end

@implementation MainViewController {
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
}
/*
-(void)viewDidDisappear:(BOOL)animated{
    self.navigationItem.title = @"Back";
}
-(void)viewDidAppear:(BOOL)animated{
    self.navigationItem.title = @"The License Plate Game";
}
*/
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}






- (IBAction)alaskaSwitch:(id)sender {
    NSLog(@"taco");
    
    
}

- (IBAction)hawaiiSwitch:(id)sender {
}

- (IBAction)resetButton:(id)sender {
}
@end
