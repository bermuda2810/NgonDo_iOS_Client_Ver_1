//
//  HomeScreen.m
//  ZooNgonDoiOS
//
//  Created by Trung sound on 6/4/12.
//  Copyright (c) 2012 Personal. All rights reserved.
//

#import "HomeScreen.h"

@implementation HomeScreen

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        UILabel *lblHome = [[UILabel alloc]initWithFrame:CGRectMake(50, 100, 200, 50)];
        [lblHome setText:@"HOME SCREEN"];
        UIButton *btnBack = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [btnBack setTitle:@"BACK" forState:UIControlStateNormal];
        [btnBack addTarget:self action:@selector(btnBackClicked) forControlEvents:UIControlStateNormal];
        [self addSubview:lblHome];
    }
    return self;
}

- (void) btnBackClicked {
    
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
