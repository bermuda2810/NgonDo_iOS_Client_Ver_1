//
//  ValidCore.m
//  ZooNgonDoiOS
//
//  Created by Trung sound on 6/4/12.
//  Copyright (c) 2012 Personal. All rights reserved.
//

#import "ValidCore.h"

@implementation ValidCore

/**
 * Validate email, commonly used characters only
 * 
 * @param string
 *            email address
 * @return boolean
 */
+ (BOOL) checkEmail:(NSString *)email{
    
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[\\w\\.-]+@([\\w\\-]+\\.)+[A-Z]{2,4}$" options:NSRegularExpressionCaseInsensitive error:NULL];
    
    NSRange rangeOfFirstMatch = [regex rangeOfFirstMatchInString:email options:0 range:NSMakeRange(0, [email length])];
    
    if (!NSEqualRanges(rangeOfFirstMatch, NSMakeRange(NSNotFound, 0))) {
        return true;
    } else {
        return false;
    }
}

/**
 * Validate string length
 * 
 * @param string
 *            input string
 * @param int min char
 * @return boolean
 */

+ (BOOL) length:(NSString *)str min:(int)min {
    int strlen = [str length];
    
    if (strlen < min) return false;
    else return true;
}

/**
 * Validate string length
 * 
 * @param string
 *            input string
 * @param int min char
 * @param int max char
 * @return boolean
 */
+ (BOOL) length:(NSString *)str min:(int)min max:(int)max {
    int strlen = [str length];
    
    if (strlen < min || strlen > max) return false;
    else return true;
}

/**
 * Checks whether a string consists of alphabetical characters, numbers, underscores and dashes
 * only.
 * 
 * @param string
 *            input string
 * @return boolean
 */
+ (BOOL) alpha_dash:(NSString *)input {
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"/^[-a-z0-9_]++$/" options:NSRegularExpressionCaseInsensitive error:NULL];
    
    NSRange rangeOfFirstMatch = [regex rangeOfFirstMatchInString:input options:0 range:NSMakeRange(0, [input length])];
    
    if (!NSEqualRanges(rangeOfFirstMatch, NSMakeRange(NSNotFound, 0))) {
        return true;
    } else {
        return false;
    }
}

/**
 * Checks whether a string is a valid number (negative and decimal numbers allowed).
 * 
 * @param string
 *            input string
 * @return boolean
 */
+ (BOOL) numeric:(NSString *)input {
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[-+]?[0-9]*\\.?[0-9]+$" options:0 error:NULL];
    
    NSRange rangeOfFirstMatch = [regex rangeOfFirstMatchInString:input options:0 range:NSMakeRange(0, [input length])];
    
    if (!NSEqualRanges(rangeOfFirstMatch, NSMakeRange(NSNotFound, 0))) {
        return true;
    } else {
        return false;
    }
}


@end
