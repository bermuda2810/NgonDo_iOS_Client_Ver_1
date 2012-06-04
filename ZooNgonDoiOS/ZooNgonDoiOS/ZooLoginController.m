//
//  ZooLoginController.m
//  ZooNgonDoiOS
//
//  Created by Anh Jun Linh Tinh on 6/1/12.
//  Copyright (c) 2012 Personal. All rights reserved.
//

#import "ZooLoginController.h"
#import "Constants.h"

@implementation ZooLoginController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        CGRect screenSize = [[UIScreen mainScreen] bounds];
//        self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, screenSize.size.width, screenSize.size.height) style:UITableViewStyleGrouped];
        _loginScreen = [[ZooLoginScreen alloc] initWithFrame:CGRectMake(0, 0, screenSize.size.width, screenSize.size.height)];
        
        self.tableView = _loginScreen;
    }
    return self;
}

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

@end
