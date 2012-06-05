//
//  ZooSignUpScreen.m
//  ZooNgonDoiOS
//
//  Created by Trung sound on 6/4/12.
//  Copyright (c) 2012 Personal. All rights reserved.
//

#import "ZooSignUpScreen.h"
#import "ValidCore.h"
#import "ZooLoginController.h"

@implementation ZooSignUpScreen
@synthesize parent = _parent;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        _txtUserName = [[UITextView alloc]initWithFrame:CGRectMake(20, 20, 200, 30)];
        _txtPassword = [[UITextView alloc]initWithFrame:CGRectMake(20, 60, 200, 30)];
        _txtEmail = [[UITextView alloc]initWithFrame:CGRectMake(20, 100, 200, 30)];
        [self addSubview:_txtUserName];
        [self addSubview:_txtPassword];
        [self addSubview:_txtEmail];
        
        [_txtUserName setText:@"123456"];
        [_txtEmail setText:@"aaaa@aaa.com"];
        
        _btnSignUp = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        _btnSignUp.frame = CGRectMake(20, 140, 100, 50);
        [_btnSignUp setTitle:@"Sign Up" forState:UIControlStateNormal];
        [_btnSignUp addTarget:self action:@selector(btnSignUpClicked) forControlEvents:UIControlEventTouchUpInside];
        
        _btnCancel = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        _btnCancel.frame = CGRectMake(140, 140, 100, 50);
        [_btnCancel setTitle:@"Cancel" forState:UIControlStateNormal];
        [_btnCancel addTarget:self action:@selector(btnCancelClicked) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_btnSignUp];
        [self addSubview:_btnCancel];
        
        _lblWarning = [[UILabel alloc]initWithFrame:CGRectMake(10, 200, 290, 30)];
        _lblWarning.backgroundColor = [UIColor whiteColor];
        [self addSubview:_lblWarning];
        
    }
    return self;
}

- (void) btnSignUpClicked {
    BOOL isValidMail;
    isValidMail = [ValidCore checkEmail:_txtEmail.text];

    /*  
        Regular expression for user name: "/^[-a-z0-9_]++$/" && Check text length
        Regular expression for email: "^[\\w\\.-]+@([\\w\\-]+\\.)+[A-Z]{2,4}$"
     */
    if ([ValidCore alpha_dash:_txtUserName.text] || [ValidCore length:_txtUserName.text min:MIN_TEXT_LENGTH max:MAX_TEXT_LENGTH]) {

        if ([ValidCore checkEmail:_txtEmail.text]) {
            ZooSignUpViewController *zooSignUpViewController = (ZooSignUpViewController *)_parent;
            [zooSignUpViewController pushToLoginScreen:_txtUserName.text pass:_txtPassword.text];

        } else {
            [_lblWarning setText:@"Email is fail"];
        }
    } else {
        [_lblWarning setText:@"User name is fail"];
    }
}

- (void) btnCancelClicked {
    ZooSignUpViewController *zooSignUpViewController = (ZooSignUpViewController *)_parent;
    [zooSignUpViewController pushToLoginScreen:nil pass:nil];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
