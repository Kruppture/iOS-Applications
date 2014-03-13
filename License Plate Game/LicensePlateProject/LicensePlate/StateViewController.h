//
//  StateViewController.h
//  LicensePlate
//
//  Created by Konnor Krupp on 7/6/13.
//  Copyright (c) 2013 Konnor Krupp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StateViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>  {
    NSString *testString;
}

@property (nonatomic, strong) IBOutlet UITableView *tableView;
@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;
@property (weak, nonatomic) IBOutlet UILabel *stateCountLabel;
@property (weak, nonatomic) IBOutlet UILabel *statesLeftLabel;
@property (strong, nonatomic) NSMutableArray *checked;
@property (strong, nonatomic) NSString *yupcheck;
@property (nonatomic) float contentOffset;
@property (strong, nonatomic) IBOutlet UILongPressGestureRecognizer *longPressGestureRecognizer;

@end
