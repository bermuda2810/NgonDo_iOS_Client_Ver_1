//
//  ZooBeanLogin.h
//  ZooNgonDoiOS
//
//  Created by Trung sound on 6/5/12.
//  Copyright (c) 2012 Personal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZooBeanLogin : NSObject {
    NSString *_sUsername;
    NSString *_sPass;
    NSString *_sEmail;
}

@property (assign, nonatomic) NSString *sUsername;
@property (assign, nonatomic) NSString *sPass;
@property (assign, nonatomic) NSString *sEmail;
@end
