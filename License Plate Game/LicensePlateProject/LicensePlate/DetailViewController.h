//
//  DetailViewController.h
//  LicensePlate
//
//  Created by Konnor Krupp on 7/6/13.
//  Copyright (c) 2013 Konnor Krupp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
    

@property (weak, nonatomic) IBOutlet UIImageView *plateView;

@property (weak, nonatomic) IBOutlet UILabel *testLabelTaco;
@property (weak,nonatomic) NSString *passDataTest;
@property (nonatomic, assign) int stateint;

@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UIImageView *flagView;
@property (weak, nonatomic) IBOutlet UILabel *populationLabel;
@property (weak, nonatomic) IBOutlet UILabel *unionYearLabel;
@property (weak, nonatomic) IBOutlet UILabel *areaLabel;
@property (weak, nonatomic) IBOutlet UILabel *resNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *cityLabel;
@property (weak, nonatomic) IBOutlet UILabel *abbrLabel;
@property (weak, nonatomic) IBOutlet UIImageView *mainView;
@property (nonatomic) float cgvalue;

@end
