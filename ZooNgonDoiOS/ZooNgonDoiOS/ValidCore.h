//
//  ValidCore.h
//  ZooNgonDoiOS
//
//  Created by Trung sound on 6/4/12.
//  Copyright (c) 2012 Personal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ValidCore : NSObject

+ (BOOL) checkEmail:(NSString *)email;
+ (BOOL) length:(NSString *)str min:(int)min;
+ (BOOL) length:(NSString *)str min:(int)min max:(int)max;
+ (BOOL) alpha_dash:(NSString *)input;
+ (BOOL) numeric:(NSString *)input;
@end
