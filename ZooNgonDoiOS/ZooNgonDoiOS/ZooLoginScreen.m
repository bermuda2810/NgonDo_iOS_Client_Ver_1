//
//  ZooLoginScreen.m
//  ZooNgonDoiOS
//
//  Created by Anh Jun Linh Tinh on 6/1/12.
//  Copyright (c) 2012 Personal. All rights reserved.
//

#import "ZooLoginScreen.h"

@implementation ZooLoginScreen

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _txtUsername = [[UITextView alloc] initWithFrame:CGRectMake(0, 0, 250, 20)];
        _txtPassword = [[UITextView alloc] initWithFrame:CGRectMake(0, 25, 250, 20)];
        _btnLogin = [[UIButton alloc] initWithFrame:CGRectMake(0, 50, 50, 20)];
        [_btnLogin setTitle:@"Login" forState:UIControlStateNormal];
        [_btnLogin addTarget:self action:@selector(loginClicked) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_txtUsername];
        [self addSubview:_txtPassword];
        [self addSubview:_btnLogin];
    }
    return self;
}

-(void) loginClicked{
    
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
