//
//  ZooLoginController.h
//  ZooNgonDoiOS
//
//  Created by Anh Jun Linh Tinh on 6/1/12.
//  Copyright (c) 2012 Personal. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZooLoginScreen.h"
@interface ZooLoginController : UITableViewController<NSURLConnectionDataDelegate>{
    ZooLoginScreen *_loginScreen;
    UIProgressView *_waiting;
}

@end
