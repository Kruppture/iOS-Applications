//
//  DetailViewController.m
//  LicensePlate
//
//  Created by Konnor Krupp on 7/6/13.
//  Copyright (c) 2013 Konnor Krupp. All rights reserved.
//

#import "DetailViewController.h"
#import "StateViewController.h"

@interface DetailViewController (){
    
   
    
 
}

@end


@implementation DetailViewController{
    NSArray *nameArray;
    
  
  
}
@synthesize passDataTest;
@synthesize scrollView;


- (void)viewDidLoad
{
    [super viewDidLoad];
 
    [scrollView setScrollEnabled:YES];
    [scrollView setContentSize:CGSizeMake(320, 1000)];
    [scrollView addSubview:_contentView];
    
    [_testLabelTaco setText:passDataTest];
    
 
    
  
	// Do any additional setup after loading the view.
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
