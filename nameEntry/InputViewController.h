//
//  InputViewController.h
//  nameEntry
//
//  Created by Alex French on 3/15/15.
//  Copyright (c) 2015 french.chagrin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IVCDelegate.h"


@interface InputViewController : UIViewController <IVCCustomDelegate>
- (IBAction)returnData:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *stuff;
@property (nonatomic) NSUInteger i;
@property (strong, nonatomic) NSMutableArray *maniArray;
@end
