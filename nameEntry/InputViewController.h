//
//  InputViewController.h
//  nameEntry
//
//  Created by Alex French on 3/15/15.
//  Copyright (c) 2015 french.chagrin. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol exitDelegate <NSObject>

@required

- (void)inputText:(NSString*)inputtedText;

@end

@interface InputViewController : UIViewController
- (IBAction)returnData:(id)sender;
@property (nonatomic, weak) id<exitDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextField *stuff;
//@property (nonatomic) NSUInteger i;
@end
