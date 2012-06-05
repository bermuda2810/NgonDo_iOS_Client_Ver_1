//
//  ZooLoginController.m
//  ZooNgonDoiOS
//
//  Created by Anh Jun Linh Tinh on 6/1/12.
//  Copyright (c) 2012 Personal. All rights reserved.
//

#import "ZooLoginController.h"
<<<<<<< HEAD
#import "HomeViewController.h"
#import "MainViewController.h"
#import "ZooSignUpViewController.h"
#import "ZooLoginScreen.h"
=======
#import "Constants.h"
>>>>>>> c570e57f3617f11ce1828adf8954895c2b8a8b54

@implementation ZooLoginController
@synthesize zooBeanLogin = _zooBeanLogin;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
<<<<<<< HEAD
        _zooLoginScreen = [[ZooLoginScreen alloc]initWithFrame:CGRectMake(0, 0, 320, 480)];
        _zooBeanLogin = [[ZooBeanLogin alloc]init];
=======
        CGRect screenSize = [[UIScreen mainScreen] bounds];
//        self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, screenSize.size.width, screenSize.size.height) style:UITableViewStyleGrouped];
        _loginScreen = [[ZooLoginScreen alloc] initWithFrame:CGRectMake(0, 0, screenSize.size.width, screenSize.size.height)];
        
        self.tableView = _loginScreen;
>>>>>>> c570e57f3617f11ce1828adf8954895c2b8a8b54
    }
    return self;
}

<<<<<<< HEAD
-(void)loadView{
    
    _zooLoginScreen.parent = self;
    self.view = _zooLoginScreen;
}

=======
>>>>>>> c570e57f3617f11ce1828adf8954895c2b8a8b54
- (void)viewDidLoad
{
    [super viewDidLoad];
    
}
//
//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//    return 1;
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    
//    // section 0 has 2 rows 
//    switch (section) {
//        case 0:
//            return 2;
//            break;
//            
//        default:
//            return 0;
//            break;
//    }
//}
//
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    NSString *cellIdentifier = [[NSString alloc] initWithFormat:@"Cell%d", indexPath.row];
//    
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
//    
//    if (cell == nil) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
//    }
//    
//    [self setupCell:cell rowIndex:indexPath.row];
//    
//    return cell;
//}
//
////Setup each cell for login form.
//- (void) setupCell: (UITableViewCell*) cell rowIndex: (NSInteger) index {
//    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(20, 10, 300, 40)];
//    
//    switch (index) {
//        case 0:
//            [textField setPlaceholder:UsernameTextConstants];
//            [cell addSubview:textField];
//            
//            break;
//        case 1:
//            //Password secure
//            textField.secureTextEntry = YES;
//            [textField setPlaceholder:PasswordTextConstants];
//            [cell addSubview:textField];
//            
//            break;
//        default:
//            break;
//    }
//}

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
