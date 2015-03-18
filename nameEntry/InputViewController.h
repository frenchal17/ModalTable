//
//  InputViewController.h
//  nameEntry
//
//  Created by Alex French on 3/15/15.
//  Copyright (c) 2015 french.chagrin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InputViewController : UIViewController
- (IBAction)returnData:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *stuff;
@property (nonatomic) int i;

@end
