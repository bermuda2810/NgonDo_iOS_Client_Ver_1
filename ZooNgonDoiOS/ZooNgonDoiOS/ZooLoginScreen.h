//
//  ZooLoginScreen.h
//  ZooNgonDoiOS
//
//  Created by Anh Jun Linh Tinh on 6/1/12.
//  Copyright (c) 2012 Personal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZooLoginScreen : UIView {
    id *_parent;
    UITextField *_txtUsername;
    UITextField *_txtPassword;
    UIButton *_btnLogin;
    UIButton *_btnSignUp;
    UITextField *_txtPass;
    
}
@property (assign, nonatomic) id *parent;
@property (assign, nonatomic) UITextField *txtUsername;
@property (assign, nonatomic) UITextField *txtPassword;

- (void) setTextForUserPass:(NSString *)sUser pass:(NSString *)sPass;
@end
