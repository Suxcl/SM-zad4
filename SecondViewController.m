//
//  SecondViewController.m
//  sak4
//
//  Created by student on 31/10/2023.
//  Copyright © 2023 SM. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"
@interface SecondViewController ()

@end



@implementation SecondViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.modifiedSurnameTextField.text = self.surname;
}



-(IBAction)enter {
    NSString *yourSurName = self.modifiedSurnameTextField.text;

    if ([yourSurName length] == 0) {
        yourSurName = @"World";
    }else{
        NSString *itemToPassBack = self.modifiedSurnameTextField.text;
        [self.delegate addItemViewController:self didFinishEnteringItem:itemToPassBack];
        [self dismissViewControllerAnimated:YES completion:nil];
    }

}






@end



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


