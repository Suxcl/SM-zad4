//
//  ViewController.m
//  sak4
//
//  Created by student on 31/10/2023.
//  Copyright © 2023 SM. All rights reserved.
//
#import "SecondViewController.h"
#import "ViewController.h"




@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void) addItemViewController:(SecondViewController *)controller didFinishEnteringItem:(NSString *)item{
    NSLog(@"This was returned from SecondViewController %@", item);
    self.enterYourForname.text = item;
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"sendSurnameSegue"]) {
        SecondViewController *controller = (SecondViewController *) segue.destinationViewController;
        controller.surname = self.enterYourForname.text;
        controller.delegate = self;
    }
}
-(IBAction)enter {
    NSString *yourName = self.inputField.text;
    NSString *myName = @"YourName";
    NSString *message;
    if ([yourName length] == 0) {
        yourName = @"World";
    }
    if ([yourName isEqualToString:myName]) {
        message = [NSString stringWithFormat:@"Hello %@! We have the same name :)", yourName];
    }else {
        message = [NSString stringWithFormat:@"Hello %@!", yourName];
    }
    self.messageLabel.text = message;
}
@end
