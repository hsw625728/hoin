//
//  Menu.m
//  solitaryDongeon
//
//  Created by Devine Lu Linvega on 2015-03-12.
//  Copyright (c) 2015 Devine Lu Linvega. All rights reserved.
//

#import "Guide.h"
//#import "ViewController.h"
//#import "User.h"
//#import "AppDelegate.h"

@implementation Guide
- (instancetype)init {
    self = [super init];
    
    if (self) {
        self.url = [[NSString alloc] init] ;
    }
    
    return self;
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.edgesForExtendedLayout = UIRectEdgeAll;
    
    //UIImageView *titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"nav_home_title"]];
    //self.navigationItem.titleView = titleView;
    self.navigationController.title = self.url;
    
    //[self addNavigationBarLeftSearchItem];
    //[self addNavigationBarRightMeItem];
    
    self.title = self.url;
    //AppDelegate *appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    NSString *path = [[NSString alloc] init];
    NSURLRequest *request = [[NSURLRequest alloc] init];
    path = [[NSBundle mainBundle] pathForResource:self.url ofType:@"html"];
    request = [NSURLRequest requestWithURL:[NSURL fileURLWithPath:path]];
   
    
    [self.webView loadRequest:request];
}

-(void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
- (IBAction)closeGuide:(id)sender {
    [self performSegueWithIdentifier:@"closeGuide" sender:self];
}




@end
