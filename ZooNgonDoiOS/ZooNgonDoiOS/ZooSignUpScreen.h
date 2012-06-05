//
//  ZooSignUpScreen.h
//  ZooNgonDoiOS
//
//  Created by Trung sound on 6/4/12.
//  Copyright (c) 2012 Personal. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZooSignUpViewController.h"
#import "ZooLoginScreen.h"

@interface ZooSignUpScreen : UIView {
    id *_parent;
    UITextView *_txtUserName;
    UITextView *_txtPassword;
    UITextView *_txtEmail;
    UIButton *_btnSignUp;
    UIButton *_btnCancel;
    UILabel *_lblWarning;
    
}

@property (assign, nonatomic) id *parent;
@end
