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
    NSArray *flag;
    NSArray *pop;
    NSArray *yearOfUnion;
    NSArray *area;
    NSArray *city;
    NSArray *abbreviations;
    NSArray *resNamea;
    NSArray *mainViewa;
    NSArray *plateViewa;
  
}
@synthesize passDataTest;
@synthesize scrollView;
@synthesize stateint;
@synthesize cgvalue;

- (void)viewDidLoad
{
    [super viewDidLoad];
 
    NSLog(@"%f", cgvalue);
    [scrollView setScrollEnabled:YES];
    if ([[UIScreen mainScreen] bounds].size.height == 480) {
         [scrollView setContentSize:CGSizeMake(320, 920)];
    } else {
        [scrollView setContentSize:CGSizeMake(320, 834)];
    }
    
    
    [scrollView addSubview:_contentView];
    
    [_testLabelTaco setText:passDataTest];
    
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"statesdata" ofType:@"plist"];
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    flag = [dict objectForKey:@"StateFlag"];
    pop = [dict objectForKey:@"Population"];
    yearOfUnion = [dict objectForKey:@"Year"];
    area = [dict objectForKey:@"Area"];
    city = [dict objectForKey:@"LargeCity"];
    abbreviations = [dict objectForKey:@"Abbreviations"];
    resNamea = [dict objectForKey:@"ResNames"];
    mainViewa = [dict objectForKey:@"MainViewPictures"];
    plateViewa = [dict objectForKey:@"LicensePlates"];
    
    _flagView.image = [UIImage imageNamed:[flag objectAtIndex:stateint]];
    _populationLabel.text = [pop objectAtIndex:stateint];
    _unionYearLabel.text = [yearOfUnion objectAtIndex:stateint];
    _areaLabel.text = [area objectAtIndex:stateint];
    _cityLabel.text = [city objectAtIndex:stateint];
    _abbrLabel.text = [abbreviations objectAtIndex:stateint];
    _resNameLabel.text = [resNamea objectAtIndex:stateint];
    _mainView.image = [UIImage imageNamed:[mainViewa objectAtIndex:stateint]];
    _plateView.image = [UIImage imageNamed:[plateViewa objectAtIndex:stateint]];
  
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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"stateSegue"]) {
        StateViewController *stateViewController = (StateViewController *)segue.destinationViewController;
        stateViewController.contentOffset = cgvalue;
    }
}
@end
