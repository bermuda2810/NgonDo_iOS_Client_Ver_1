//
//  ZooLoginController.h
//  ZooNgonDoiOS
//
//  Created by Anh Jun Linh Tinh on 6/1/12.
//  Copyright (c) 2012 Personal. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZooLoginScreen.h"
#import "ZooBeanLogin.h"

@interface ZooLoginController : UIViewController<NSURLConnectionDataDelegate>{
    ZooLoginScreen *_zooLoginScreen;
    ZooBeanLogin *_zooBeanLogin;
    NSString *_sUsername;
    UIWindow *_window;
}
@property (retain, nonatomic) ZooBeanLogin *zooBeanLogin;

- (void) switchToHomeScreen;
- (void) switchToSignUpScreen;
- (void) setToBeanLogin:(NSString *)sUser pass:(NSString *)sPass;

@end
