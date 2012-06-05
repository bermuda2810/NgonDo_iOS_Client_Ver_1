//
//  ZooLoginScreen.m
//  ZooNgonDoiOS
//
//  Created by Anh Jun Linh Tinh on 6/1/12.
//  Copyright (c) 2012 Personal. All rights reserved.
//

#import "ZooLoginController.h"
#import "HomeScreen.h"

@implementation ZooLoginScreen
@synthesize parent = _parent;
@synthesize txtUsername = _txtUsername;
@synthesize txtPassword = _txtPassword;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor grayColor];
        _txtUsername = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 250, 20)];
        _txtPassword = [[UITextField alloc] initWithFrame:CGRectMake(0, 25, 250, 20)];
        [_txtPassword setSecureTextEntry:YES];
        _txtUsername.backgroundColor = [UIColor whiteColor];
        _txtPassword.backgroundColor = [UIColor whiteColor];

        _btnLogin =  [UIButton buttonWithType:UIButtonTypeRoundedRect];
        _btnLogin.frame = CGRectMake(0, 50, 100, 20);
        [_btnLogin setTitle:@"Login" forState:UIControlStateNormal];
        [_btnLogin addTarget:self action:@selector(loginClicked) forControlEvents:UIControlEventTouchUpInside];

        _btnSignUp =  [UIButton buttonWithType:UIButtonTypeRoundedRect];
        _btnSignUp.frame = CGRectMake(0, 150, 100, 20);
        [_btnSignUp setTitle:@"Sign up" forState:UIControlStateNormal];
        [_btnSignUp addTarget:self action:@selector(signUpClicked) forControlEvents:UIControlEventTouchUpInside];

        [self addSubview:_txtUsername];
        [self addSubview:_txtPassword];
        [self addSubview:_btnLogin];
        [self addSubview:_btnSignUp];

        [_txtUsername release];
        [_txtPassword release];
        [_btnSignUp release];
        [_btnLogin release];        
    }
    return self;
}

- (void) setTextForUserPass:(NSString *)sUser pass:(NSString *)sPass {
    [_txtUsername setText:sUser];
    [_txtPassword setText:sPass];
}

-(void) loginClicked{
    ZooLoginController *zooVc = (ZooLoginController *)_parent;
    [zooVc switchToHomeScreen];
}

-(void) signUpClicked {
    ZooLoginController *zooVc = (ZooLoginController *)_parent;
    [zooVc switchToSignUpScreen];
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
