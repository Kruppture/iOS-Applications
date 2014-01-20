//
//  ViewController.h
//  RandomizeSelection
//
//  Created by Konnor Krupp on 1/14/14.
//  Copyright (c) 2014 Konnor Krupp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate> {
  
    //Initiallize all the text fields
    
    IBOutlet UITextField *textf1;
    IBOutlet UITextField *textf2;
    IBOutlet UITextField *textf3;
    IBOutlet UITextField *textf4;
    IBOutlet UITextField *textf5;
    IBOutlet UITextField *textf6;
    IBOutlet UITextField *textf7;
    IBOutlet UITextField *textf8;
    IBOutlet UILabel *answerbut;
    IBOutlet UIButton *screenTouch;
  
   
    
}
-(IBAction)button;
@property (strong, nonatomic) IBOutlet UIButton *_screenTouch;

@property (nonatomic, retain) UITextField *textf1;
@property (nonatomic, retain) UITextField *textf2;
@property (nonatomic, retain) UITextField *textf3;
@property (nonatomic, retain) UITextField *textf4;
@property (nonatomic, retain) UITextField *textf5;
@property (nonatomic, retain) UITextField *textf6;
@property (nonatomic, retain) UITextField *textf7;
@property (nonatomic, retain) UITextField *textf8;



@property (retain, nonatomic) UILabel *answerbut;
-(IBAction) screentouch:(id)sender;

-(IBAction)clear:(id)sender;









@end
