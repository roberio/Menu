//
//  MenuViewController.h
//  Menu
//
//  Created by Robério Vitória on 06/10/11.
//  Copyright 2011 iRANV Corporation. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuViewController : UIViewController <UIAlertViewDelegate, UIActionSheetDelegate>
{
    UIButton *button1;
    UIButton *button2;
    UIButton *button3;
    UIButton *button4;
    UIButton *button5;
    UIButton *button6;
    
    UIAlertView *alert;
    UIActionSheet *actionSheet;
}

- (void)actionTableView:(id)sender;
- (void)actionViewController:(id)sender;
- (void)actionAlert:(id)sender;
- (void)showActionSheet:(id)sender;
- (void)clickAction:(id)sender;

@end
