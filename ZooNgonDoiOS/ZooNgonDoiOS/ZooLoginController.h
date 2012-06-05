//
//  ZooLoginController.h
//  ZooNgonDoiOS
//
//  Created by Anh Jun Linh Tinh on 6/1/12.
//  Copyright (c) 2012 Personal. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZooLoginScreen.h"
<<<<<<< HEAD
#import "ZooBeanLogin.h"

@interface ZooLoginController : UIViewController<NSURLConnectionDataDelegate>{
    ZooLoginScreen *_zooLoginScreen;
    ZooBeanLogin *_zooBeanLogin;
    NSString *_sUsername;
    UIWindow *_window;
=======
@interface ZooLoginController : UITableViewController<NSURLConnectionDataDelegate>{
    ZooLoginScreen *_loginScreen;
    UIProgressView *_waiting;
>>>>>>> c570e57f3617f11ce1828adf8954895c2b8a8b54
}
@property (retain, nonatomic) ZooBeanLogin *zooBeanLogin;

- (void) switchToHomeScreen;
- (void) switchToSignUpScreen;
- (void) setToBeanLogin:(NSString *)sUser pass:(NSString *)sPass;

@end
