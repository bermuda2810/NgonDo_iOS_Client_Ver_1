//
//  MainViewController.m
//  ZooNgonDoiOS
//
//  Created by Trung sound on 6/5/12.
//  Copyright (c) 2012 Personal. All rights reserved.
//

#import "MainViewController.h"
#import "HomeViewController.h"
#import "TopLikeViewController.h"
#import "TopNewController.h"
#import "CreateFoodViewController.h"
#import "CreateSpotViewController.h"

@implementation MainViewController
@synthesize mainTabbar;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        HomeViewController *homeViewController= [[HomeViewController alloc]init];
        CreateFoodViewController *createFoodViewController = [[CreateFoodViewController alloc]init];
        TopNewController *topNewController = [[TopNewController alloc]init];
        TopLikeViewController *topLikeViewController = [[TopLikeViewController alloc]init];
        CreateSpotViewController *createSpotViewController = [[CreateSpotViewController alloc]init];
        
        homeViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"HOME" image:nil tag:0];

        createFoodViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"CREATE FOOD" image:nil tag:1];
        
        topNewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"TOP NEW" image:nil tag:2];
        
        topLikeViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"TOP LIKE" image:nil tag:3];
        
        createSpotViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"CREATE SPOT" image:nil tag:4];
        
        self.viewControllers = [NSArray arrayWithObjects:homeViewController, createFoodViewController, topNewController, topLikeViewController, createSpotViewController,nil];
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

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = NO;
    
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [mainTabbar release];
    mainTabbar = nil;

    [self setMainTabbar:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    [mainTabbar release];
    [super dealloc];
}
@end
