//
//  ZooLoginScreen.m
//  ZooNgonDoiOS
//
//  Created by Anh Jun Linh Tinh on 6/1/12.
//  Copyright (c) 2012 Personal. All rights reserved.
//

<<<<<<< HEAD
#import "ZooLoginController.h"
#import "HomeScreen.h"
=======
#import "ZooLoginScreen.h"
#import "Constants.h"
>>>>>>> c570e57f3617f11ce1828adf8954895c2b8a8b54

@implementation ZooLoginScreen
@synthesize parent = _parent;
@synthesize txtUsername = _txtUsername;
@synthesize txtPassword = _txtPassword;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame style:UITableViewStyleGrouped];
    if (self) {
<<<<<<< HEAD
        self.backgroundColor = [UIColor grayColor];
        _txtUsername = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 250, 20)];
        _txtPassword = [[UITextField alloc] initWithFrame:CGRectMake(0, 25, 250, 20)];
        [_txtPassword setSecureTextEntry:YES];
        _txtUsername.backgroundColor = [UIColor whiteColor];
        _txtPassword.backgroundColor = [UIColor whiteColor];

        _btnLogin =  [UIButton buttonWithType:UIButtonTypeRoundedRect];
        _btnLogin.frame = CGRectMake(0, 50, 100, 20);
        [_btnLogin setTitle:@"Login" forState:UIControlStateNormal];
        [_btnLogin addTarget:self action:@selector(loginClicked) forControlEvents:UIControlEventTouchUpInside];

        _btnSignUp =  [UIButton buttonWithType:UIButtonTypeRoundedRect];
        _btnSignUp.frame = CGRectMake(0, 150, 100, 20);
        [_btnSignUp setTitle:@"Sign up" forState:UIControlStateNormal];
        [_btnSignUp addTarget:self action:@selector(signUpClicked) forControlEvents:UIControlEventTouchUpInside];

        [self addSubview:_txtUsername];
        [self addSubview:_txtPassword];
        [self addSubview:_btnLogin];
        [self addSubview:_btnSignUp];

        [_txtUsername release];
        [_txtPassword release];
        [_btnSignUp release];
        [_btnLogin release];        
=======
        
        [self setScrollEnabled:NO];
        self.userInteractionEnabled = YES;
        
        //Setup image for view
        UIImage *backgroundImg = [UIImage imageNamed:BackgroundImageConstants];
        self.backgroundColor = [UIColor colorWithPatternImage:backgroundImg];
        
        [backgroundImg release];
        
        [self setupView];
>>>>>>> c570e57f3617f11ce1828adf8954895c2b8a8b54
    }
    return self;
}

<<<<<<< HEAD
- (void) setTextForUserPass:(NSString *)sUser pass:(NSString *)sPass {
    [_txtUsername setText:sUser];
    [_txtPassword setText:sPass];
}

-(void) loginClicked{
    ZooLoginController *zooVc = (ZooLoginController *)_parent;
    [zooVc switchToHomeScreen];
}

-(void) signUpClicked {
    ZooLoginController *zooVc = (ZooLoginController *)_parent;
    [zooVc switchToSignUpScreen];
=======
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
>>>>>>> c570e57f3617f11ce1828adf8954895c2b8a8b54
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
