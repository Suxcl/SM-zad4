//
//  SecondViewController.h
//  sak4
//
//  Created by student on 31/10/2023.
//  Copyright © 2023 SM. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class SecondViewController;

@protocol SecondViewControllerDelegate <NSObject>
- (void) addItemViewController:(SecondViewController *) controller didFinishEnteringItem: (NSString *) item;


@end

@interface SecondViewController : UIViewController;



@property (nonatomic, weak) id <SecondViewControllerDelegate> delegate;
@property (nonatomic, weak) IBOutlet UITextField *modifiedSurnameTextField;

@property NSString *surname;

@end

NS_ASSUME_NONNULL_END
