//
//  ZooLoginController.m
//  ZooNgonDoiOS
//
//  Created by Anh Jun Linh Tinh on 6/1/12.
//  Copyright (c) 2012 Personal. All rights reserved.
//

#import "ZooLoginController.h"
#import "HomeViewController.h"
#import "MainViewController.h"
#import "ZooSignUpViewController.h"
#import "ZooLoginScreen.h"

@implementation ZooLoginController
@synthesize zooBeanLogin = _zooBeanLogin;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        _zooLoginScreen = [[ZooLoginScreen alloc]initWithFrame:CGRectMake(0, 0, 320, 480)];
        _zooBeanLogin = [[ZooBeanLogin alloc]init];
    }
    return self;
}

-(void)loadView{
    
    _zooLoginScreen.parent = self;
    self.view = _zooLoginScreen;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)viewWillAppear:(BOOL)animated {
    self.navigationController.navigationBarHidden = YES;
    _zooLoginScreen.txtUsername.text = _zooBeanLogin.sUsername;
    _zooLoginScreen.txtPassword.text = _zooBeanLogin.sPass;
    
}

- (void) setToBeanLogin:(NSString *)sUser pass:(NSString *)sPass{
    _zooBeanLogin.sUsername = sUser;
    _zooBeanLogin.sPass = sPass;
    _sUsername = sUser;
    
}
- (void) switchToHomeScreen {
    MainViewController *mainViewController = [[MainViewController alloc]initWithNibName:@"MainViewController" bundle:nil];
//    HomeViewController *homeViewController = [[HomeViewController alloc]init];
    [self presentModalViewController:mainViewController animated:TRUE];
}

- (void) switchToSignUpScreen {
    ZooSignUpViewController *zooSignUpViewController = [[ZooSignUpViewController alloc]initWithNibName:@"ZooSignUpViewController" bundle:nil];

    [self.navigationController pushViewController:zooSignUpViewController animated:YES];
//    [self presentModalViewController:zooSignUpViewController animated:TRUE];
}
@end
