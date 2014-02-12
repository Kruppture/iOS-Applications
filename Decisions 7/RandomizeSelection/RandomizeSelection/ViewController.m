//
//  ViewController.m
//  RandomizeSelection
//
//  Created by Konnor Krupp on 1/14/14.
//  Copyright (c) 2014 Konnor Krupp. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()



@end



@implementation ViewController


-(IBAction)ReturnKeyButton:(id)sender {
    
    [sender resignFirstResponder];
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}


@synthesize textf1;
@synthesize textf2;
@synthesize textf3;
@synthesize textf4;
@synthesize textf5;
@synthesize textf6;
@synthesize textf7;
@synthesize textf8;
@synthesize answerbut;




-(IBAction)screentouch:(id)sender{
    [textf1 resignFirstResponder];
    [textf2 resignFirstResponder];
    [textf3 resignFirstResponder];
    [textf4 resignFirstResponder];
    [textf5 resignFirstResponder];
    [textf6 resignFirstResponder];
    [textf7 resignFirstResponder];
    [textf8 resignFirstResponder];
    
}

-(IBAction)clear:(id)sender{
    textf1.text = [NSString stringWithFormat:@""];
    textf2.text = [NSString stringWithFormat:@""];
    textf3.text = [NSString stringWithFormat:@""];
    textf4.text = [NSString stringWithFormat:@""];
    textf5.text = [NSString stringWithFormat:@""];
    textf6.text = [NSString stringWithFormat:@""];
    textf7.text = [NSString stringWithFormat:@""];
    textf8.text = [NSString stringWithFormat:@""];
    
    answerbut.text = [NSString stringWithFormat:@"Answer goes here"];
    
}





-(IBAction)button {
    
   
    //I should stick them all into an array, then have an if statement
    //that says if the text is not empty, add it to another array, then
    //after the button press, randomize that
    
    
    
    int text = arc4random() % 8;
    switch (text) {
        case 0:
            answerbut.text = [NSString stringWithFormat:@"%@", [textf1 text]];
            break;
        case 1:
            answerbut.text = [NSString stringWithFormat:@"%@", [textf2 text]];
            break;
        case 2:
            answerbut.text = [NSString stringWithFormat:@"%@", [textf3 text]];
            break;
        case 3:
            answerbut.text = [NSString stringWithFormat:@"%@", [textf4 text]];
            break;
        case 4:
            answerbut.text = [NSString stringWithFormat:@"%@", [textf5 text]];
            break;
        case 5:
            answerbut.text = [NSString stringWithFormat:@"%@", [textf6 text]];
            break;
        case 6:
            answerbut.text = [NSString stringWithFormat:@"%@", [textf7 text]];
            break;
        case 7:
            answerbut.text = [NSString stringWithFormat:@"%@", [textf8 text]];
            break;
        default:
            break;
            
            
    }
    //answer.text = [NSString stringWithFormat:@"%@", [textf1 text ]];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    textf1.delegate = self;
    textf2.delegate = self;
    textf3.delegate = self;
    textf4.delegate = self;
    textf5.delegate = self;
    textf6.delegate = self;
    textf7.delegate = self;
    textf8.delegate = self;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

