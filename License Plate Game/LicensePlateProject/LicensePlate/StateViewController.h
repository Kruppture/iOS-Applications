//
//  StateViewController.h
//  LicensePlate
//
//  Created by Konnor Krupp on 7/6/13.
//  Copyright (c) 2013 Konnor Krupp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StateViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    NSString *testString;
}

@property (nonatomic, strong) IBOutlet UITableView *tableView;
@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;
@property (weak, nonatomic) IBOutlet UILabel *stateCountLabel;
@property (weak, nonatomic) IBOutlet UILabel *statesLeftLabel;

@property (nonatomic, strong) NSString *testString;

-(void)saveData:(NSNotification *)notification;


-(void)cellWasSwiped:(UIGestureRecognizer *)g;
@end
