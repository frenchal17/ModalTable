//
//  InputViewController.m
//  nameEntry
//
//  Created by Alex French on 3/15/15.
//  Copyright (c) 2015 french.chagrin. All rights reserved.
//

#import "InputViewController.h"

@interface InputViewController ()

@end

@implementation InputViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    
}

- (void)setArray:(NSMutableArray *)newAry{
    NSLog(@"I do not know what to put heeeeeeere to make transferText = newAry");
}


- (IBAction)returnData:(id)sender {
    
    //NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    //[prefs setObject:self.stuff forKey:@"newText"];
    NSString *meh = self.stuff.text;
    self.maniArray[self.i] = meh;
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
@end
