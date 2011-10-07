//
//  MenuViewController.m
//  Menu
//
//  Created by Robério Vitória on 06/10/11.
//  Copyright 2011 iRANV Corporation. All rights reserved.
//

#import "MenuViewController.h"
#import "TestTableView.h"
#import "TestViewController.h"

@implementation MenuViewController

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blackColor];
    
    button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button1.alpha = 0.0;
    [button1 setTitle:@"Table View" forState:UIControlStateNormal];
    [button1 setFrame:CGRectMake(20, 40, 125, 100)];
    [button1 setTitleColor:[UIColor darkTextColor] forState:UIControlStateNormal];
    [button1 setBackgroundColor:[UIColor clearColor]];
	[button1 addTarget:self action:@selector(actionTableView:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    
    button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button2 setTitle:@"View Controller" forState:UIControlStateNormal];
    [button2 setFrame:CGRectMake(120, 0, 150, 125)];
    [button2 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [button2 setBackgroundColor:[UIColor clearColor]];
	[button2 addTarget:self action:@selector(actionViewController:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
    
    button3 = [[UIButton buttonWithType:UIButtonTypeRoundedRect] retain];
    button3.alpha = 0.0;
    [button3 setTitle:@"Alert View" forState:UIControlStateNormal];
    [button3 setFrame:CGRectMake(20, 190, 0, 0)];
    [button3 setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    [button3 setBackgroundColor:[UIColor clearColor]];
	[button3 addTarget:self action:@selector(actionAlert:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button3];

    button4 = [[UIButton buttonWithType:UIButtonTypeRoundedRect] retain];
    [button4 setTitle:@"Action Sheet" forState:UIControlStateNormal];
    [button4 setFrame:CGRectMake(320, 190, 125, 100)];
    [button4 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [button4 setBackgroundColor:[UIColor clearColor]];
	[button4 addTarget:self action:@selector(showActionSheet:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button4];

    button5 = [[UIButton buttonWithType:UIButtonTypeRoundedRect] retain];
    [button5 setTitle:@"NEW" forState:UIControlStateNormal];
    [button5 setFrame:CGRectMake(20, 480, 125, 100)];
    [button5 setTitleColor:[UIColor purpleColor] forState:UIControlStateNormal];
    [button5 setBackgroundColor:[UIColor clearColor]];
	[button5 addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button5];

    button6 = [[UIButton buttonWithType:UIButtonTypeRoundedRect] retain];
    button6.alpha = 1.0;
    [button6 setTitle:@"NEW" forState:UIControlStateNormal];
    [button6 setFrame:CGRectMake(175, 360, 125, 100)];
    [button6 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button6 setBackgroundColor:[UIColor clearColor]];
	[button6 addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button6];

}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [UIView beginAnimations:@"montaMenu" context:NULL];	
    [UIView setAnimationBeginsFromCurrentState:YES];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:nil];
    
    button1.alpha = 1.0;
    button2.frame = CGRectMake(175, 40, 125, 100);
    button3.frame = CGRectMake(20, 190, 125, 100);
    button3.alpha = 1.0;
    button4.frame = CGRectMake(175, 190, 125, 100);
    button5.frame = CGRectMake(20, 360, 125, 100);
    button6.alpha = 0.25;
    
    [UIView commitAnimations];
}

- (void)actionTableView:(id)sender
{
    TestTableView *tv = [[TestTableView alloc] initWithStyle:UITableViewStyleGrouped];
    UINavigationController *nv = [[UINavigationController alloc] initWithRootViewController:tv];
    [self presentModalViewController:nv animated:YES];
    [nv release];
    [tv release];
}

- (void)actionViewController:(id)sender
{
    TestViewController *view = [[TestViewController alloc] init];
    UINavigationController *nv = [[UINavigationController alloc] initWithRootViewController:view];
    [self presentModalViewController:nv animated:YES];
    [nv release];
    [view release];
}

- (void)actionAlert:(id)sender
{
    alert = [[UIAlertView alloc] initWithTitle:@"Teste de alerta" message:@"Você pressionou o botão de alerta" delegate:self cancelButtonTitle:@"Cancelar" otherButtonTitles:@"View Controller", nil];
    [alert show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex 
{
    if (alertView == alert) {
        if (buttonIndex == 1) {
            TestViewController *view = [[TestViewController alloc] init];
            UINavigationController *nv = [[UINavigationController alloc] initWithRootViewController:view];
            [self presentModalViewController:nv animated:YES];
            [nv release];
            [view release];
        }
    }
}

- (void)showActionSheet:(id)sender
{
    actionSheet = [[UIActionSheet alloc] initWithTitle:@"Teste de Action Sheet" delegate:self cancelButtonTitle:@"Cancelar" destructiveButtonTitle:nil otherButtonTitles:@"Table View", nil];
    [actionSheet showInView:self.view];
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0) {
        TestTableView *tv = [[TestTableView alloc] initWithStyle:UITableViewStyleGrouped];
        UINavigationController *nv = [[UINavigationController alloc] initWithRootViewController:tv];
        [self presentModalViewController:nv animated:YES];
        [nv release];
        [tv release];
    }
}

- (void)clickAction:(id)sender
{

}

@end