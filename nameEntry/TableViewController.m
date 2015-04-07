//
//  TableViewController.m
//  nameEntry
//
//  Created by Alex French on 3/15/15.
//  Copyright (c) 2015 french.chagrin. All rights reserved.
//

#import "TableViewController.h"
#import "InputViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController{
    NSInteger i;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.fields = [NSMutableArray new];
    
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.fields count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *SimpleIdentifier = @"simpleIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimpleIdentifier forIndexPath:indexPath];
    //NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    //NSString *myString = [prefs stringForKey:@"newText"];
    
    if (cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SimpleIdentifier];
    }

    cell.textLabel.text = self.fields[indexPath.row];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.identifier isEqualToString:@"modalMODOK"]){
        ((InputViewController*)segue.destinationViewController).delegate = self;
    }
    
}

- (void) inputText:(NSString *)inputtedText {
    [self.fields addObject:inputtedText];
    [self.tableView reloadData];
    NSLog(@"%@", self.fields);
}


@end
