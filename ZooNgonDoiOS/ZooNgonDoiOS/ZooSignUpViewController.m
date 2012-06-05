//
//  ZooSignUpViewController.m
//  ZooNgonDoiOS
//
//  Created by Trung sound on 6/4/12.
//  Copyright (c) 2012 Personal. All rights reserved.
//

#import "ZooSignUpViewController.h"
#import "ZooLoginController.h"
#import "ZooSignUpScreen.h"

@implementation ZooSignUpViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/

- (void) loadView {
    self.navigationItem.hidesBackButton = YES;
    self.navigationController.navigationBarHidden = NO;
    
    ZooSignUpScreen *_signUpScreen = [[ZooSignUpScreen alloc]initWithFrame:CGRectMake(0, 0, 320, 480)];
    _signUpScreen.parent = self;
    self.view = _signUpScreen;
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];

}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void) pushToLoginScreen:(NSString *)pUser pass:(NSString *)pPass {
    ZooLoginController *zooLoginController = [[ZooLoginController alloc]initWithNibName:@"ZooLoginController" bundle:nil ];
    [zooLoginController setToBeanLogin:pUser pass:pPass];
    [self.navigationController pushViewController:zooLoginController animated:YES];
//    [self dismissModalViewControllerAnimated:YES];
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
