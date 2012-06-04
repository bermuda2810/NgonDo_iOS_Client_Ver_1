//
//  ZooLoginScreen.m
//  ZooNgonDoiOS
//
//  Created by Anh Jun Linh Tinh on 6/1/12.
//  Copyright (c) 2012 Personal. All rights reserved.
//

#import "ZooLoginScreen.h"
#import "Constants.h"

@implementation ZooLoginScreen

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame style:UITableViewStyleGrouped];
    if (self) {
        
        [self setScrollEnabled:NO];
        self.userInteractionEnabled = YES;
        
        //Setup image for view
        UIImage *backgroundImg = [UIImage imageNamed:BackgroundImageConstants];
        self.backgroundColor = [UIColor colorWithPatternImage:backgroundImg];
        
        [backgroundImg release];
        
        [self setupView];
    }
    return self;
}

- (NSInteger)numberOfSections {
    return 0;
}
//
//- (NSInteger)numberOfRowsInSection:(NSInteger)section {
//    switch (section) {
//        case 0:
//            return 1;
//            break;
//            
//        default:
//            return 0;
//            break;
//    }
//}
//
//- (UITableViewCell *)cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    NSString *cellIdentifier = [[NSString alloc] initWithFormat:@"Cell%d", indexPath.row];
//    
//    UITableViewCell *cell = [self dequeueReusableCellWithIdentifier:cellIdentifier];
//    
//    if (cell != nil) {
//        return cell;
//    }
//    
//    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellIdentifier];
//    
//    if (indexPath.row == 0) {
//        UITextField *username = [[UITextField alloc] initWithFrame:CGRectMake(20, 0, 320, 40)];
//        username.placeholder = UsernameTextConstants;
//        
//        [cell addSubview:username];
//    }
//    
//    return cell;
//}

- (void) setupView {
    UIImageView *formBackground = [[UIImageView alloc] initWithFrame:CGRectMake(10, 0, 300, 70)];
    UIImage *backgroundLoginFormImage = [UIImage imageNamed:BackgroundFormLoginConstants];
    [formBackground setImage:backgroundLoginFormImage];
    
    _txtUsername = [[UITextField alloc] initWithFrame:CGRectMake((self.bounds.size.width - 250) / 2, 0, 250, 30)];
    [_txtUsername setPlaceholder:UsernameTextConstants];
    
    
    _txtPassword = [[UITextField alloc] initWithFrame:CGRectMake((self.bounds.size.width - 250) / 2, 35, 250, 30)];
    [_txtPassword setPlaceholder:PasswordTextConstants];
    [_txtPassword setSecureTextEntry:YES];
    
    _btnLogin = [[UIButton alloc] initWithFrame:CGRectMake((self.bounds.size.width - 250) / 2, 70, 50, 30)];
    [_btnLogin setTitle:@"Login" forState:UIControlStateNormal];
    [_btnLogin addTarget:self action:@selector(loginClicked) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_txtUsername];
    [self addSubview:_txtPassword];
    [self addSubview:_btnLogin];
}

-(void) loginClicked {
    [_txtUsername resignFirstResponder];
    [_txtPassword resignFirstResponder];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
//    if ([event type] == UIControlEventTouchUpInside) {
        [_txtUsername resignFirstResponder];
        [_txtPassword resignFirstResponder];
//    }
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
