//
//  TestTableView.m
//  Menu
//
//  Created by Robério Vitória on 07/10/11.
//  Copyright 2011 iRANV Corporation. All rights reserved.
//

#import "TestTableView.h"

@implementation TestTableView

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"Table View";
    self.navigationItem.leftBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Menu" style:UIBarButtonItemStyleDone target:self action:@selector(cancel:)] autorelease];
}

- (void)cancel:(id)sender
{
	[self.navigationController dismissModalViewControllerAnimated:YES];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return 1;
    } else {
        return 2;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // Configure the cell...
    if (indexPath.section == 0) {
        cell.textLabel.text = @"Linha 1 da seção 1";
    } else {
        switch (indexPath.row) {
            case 0:
                cell.textLabel.text = @"Linha 1 da seção 2";
                break;
            case 1:
                cell.textLabel.text = @"Linha 2 da seção 2";
                break;
                
            default:
                break;
        }
    }
    
    return cell;
}

@end