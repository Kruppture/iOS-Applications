//
//  StateViewController.m
//  LicensePlate
//
//  Created by Konnor Krupp on 7/6/13.
//  Copyright (c) 2013 Konnor Krupp. All rights reserved.
//

#import "StateViewController.h"
#import "DetailViewController.h"
#import "Entity.h"
#import "AppDelegate.h"



@interface StateViewController (){
    
}

@end

@implementation StateViewController {
    NSArray *names;
    NSMutableArray *checked;
    int foundCount;
    int newCount;
    int tacoCount;
    int finalCount;
    
}

@synthesize tableView = _tableView;
@synthesize testString;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    AppDelegate* appDelegate = [UIApplication sharedApplication].delegate;
    
    self.managedObjectContext = appDelegate.managedObjectContext;
    
    [self setNeedsStatusBarAppearanceUpdate];
    [self.tableView setSeparatorColor:[UIColor lightGrayColor]];
    [self.tableView setSeparatorInset:UIEdgeInsetsZero];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(saveData:) name:UIApplicationDidEnterBackgroundNotification object:nil];
    
    if ([[NSFileManager defaultManager] fileExistsAtPath:[self plistPath]]){
        checked = [[NSMutableArray alloc] initWithContentsOfFile:[self plistPath]];
    } else {
            checked = [NSMutableArray arrayWithObjects:@"NO", @"NO",@"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", @"NO", nil];
    
    }
    
    names = [NSArray arrayWithObjects:@"Alabama", @"Alaska",@"Arizona", @"Arkansas", @"California", @"Colorado", @"Connecticut", @"Deleware", @"Florida", @"Georgia", @"Hawaii", @"Idaho", @"Illinois", @"Indiana", @"Iowa", @"Kansas", @"Kentucky", @"Louisiana", @"Maine", @"Maryland", @"Massachussets", @"Michigan", @"Minnesota", @"Mississippi", @"Missouri", @"Montana", @"Nebraska", @"Nevada", @"New Hampshire", @"New Jersey", @"New Mexico", @"New York", @"North Carolina", @"North Dakota", @"Ohio", @"Oklahoma", @"Oregon", @"Pennyslvania", @"Rhode Island", @"South Carolina", @"South Dakota", @"Tennessee", @"Texas", @"Utah", @"Vermont", @"Virginia", @"Washington", @"West Virginia", @"Wisconsin", @"Wyoming", nil];
  
    tacoCount = 50;
    [self titleCountMethod];
 
       UISwipeGestureRecognizer *g = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(cellWasSwiped:)];
   
    [g setDirection:(UISwipeGestureRecognizerDirectionLeft)];
        [self.tableView addGestureRecognizer:g];
}
    
    
-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

    
	// Do any additional setup after loading the view.


-(BOOL)shouldAutorotate:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return [names count];

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"NameCell";
    
    UITableViewCell *cell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
        
     
    }
    
    
    
    //assigns the state names to the cells
    cell.textLabel.text = [names objectAtIndex:indexPath.row];
    
    UIFont *helvFont = [UIFont fontWithName:@"HelveticaNeue" size:20.0];
    [[cell textLabel] setFont:helvFont];
    
    //puts the default checkmark state as none
    [cell setAccessoryType:UITableViewCellAccessoryNone];
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    
    if ([[checked objectAtIndex:indexPath.row] isEqualToString:@"YES"]) {
     
        cell.contentView.backgroundColor = [UIColor colorWithRed:(52/255.0) green:(152/255.0) blue:(219/255.0) alpha:.8];
      
    } else {
       
        cell.contentView.backgroundColor = [UIColor lightTextColor];
    }
    
    return cell;
}

//decides whether to add a checkmark or take away.
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];

    if ([[checked objectAtIndex:indexPath.row] isEqualToString:@"NO"]) {
                cell.contentView.backgroundColor = [UIColor colorWithRed:(52/255.0) green:(152/255.0) blue:(219/255.0) alpha:.8];
        
        [checked replaceObjectAtIndex:indexPath.row withObject:[NSString stringWithFormat:@"YES"]];
        [self titleCountMethod];
        NSString *filePath;
        filePath = [self plistPath];
        [checked writeToFile:filePath atomically:YES];
      
    } else {
        
        [checked replaceObjectAtIndex:indexPath.row withObject:[NSString stringWithFormat:@"NO"]];
        cell.contentView.backgroundColor = [UIColor lightGrayColor];
        [self titleCountMethod];
        NSString *filePath;
        filePath = [self plistPath];
        [checked writeToFile:filePath atomically:YES];
       
    }
    
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    [tableView reloadData];
    
}



-(void)cellWasSwiped:(UIGestureRecognizer *)g{
  
    testString = [NSString stringWithFormat:@"%i", finalCount];
    NSLog(@"swiped");
}


//defines the directory of where to save the checked array
- (NSString *)plistPath {
    NSString *homeDirectory = NSHomeDirectory();
    NSString *filePath = [homeDirectory stringByAppendingString:@"/Documents/states.plist"];
    return filePath;
}

//saves the data upon termination of app
-(void) saveData:(NSNotification *)notification{
    NSString *filePath;
    filePath = [self plistPath];
    [checked writeToFile:filePath atomically:YES];
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        DetailViewController *destViewController = segue.destinationViewController;
        NSLog(@"hi");
    }
}

//Saves the checked array upon changing of views
-(void)viewDidDisappear:(BOOL)animated{
    NSString *filePath;
    filePath = [self plistPath];
    [checked writeToFile:filePath atomically:YES];
}

-(void)titleCountMethod{
    if ([checked containsObject:@"YES"]){
        
        NSMutableArray *yesCount = [[NSMutableArray alloc] init];
        
        for(NSString *word in checked){
            if( [word length] == 3 ) [yesCount addObject:word];
        }
        int yesCountNum = [yesCount count];
        
        finalCount = 50 - yesCountNum;
        NSLog(@"%i", finalCount);
    } else {
        finalCount = 50;
    }
    NSString *foundCountString = [NSString stringWithFormat:@"%i", finalCount];
    
    NSDictionary *textAttributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                    [UIColor whiteColor],NSForegroundColorAttributeName,
                                    [UIColor whiteColor],NSBackgroundColorAttributeName,nil];
   
    
    UIFont *boldFont = [UIFont fontWithName:@"HelveticaNeue" size:20];
    NSString *titleString = [foundCountString stringByAppendingString:@" States Left"];
    [_stateCountLabel setText:foundCountString]; // sets the title of the navigation controller
}

@end
