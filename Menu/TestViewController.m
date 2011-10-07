//
//  TestViewController.m
//  Menu
//
//  Created by Robério Vitória on 07/10/11.
//  Copyright 2011 iRANV Corporation. All rights reserved.
//

#import "TestViewController.h"

@implementation TestViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"View Controller";
    self.navigationItem.leftBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Menu" style:UIBarButtonItemStyleDone target:self action:@selector(cancel:)] autorelease];
}

- (void)cancel:(id)sender
{
	[self.navigationController dismissModalViewControllerAnimated:YES];
}

@end
