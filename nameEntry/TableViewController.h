//
//  TableViewController.h
//  nameEntry
//
//  Created by Alex French on 3/15/15.
//  Copyright (c) 2015 french.chagrin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IVCDelegate.h"


@interface TableViewController : UITableViewController <IVCCustomDelegate>
@property (nonatomic, strong) NSMutableArray *fields;
@end
