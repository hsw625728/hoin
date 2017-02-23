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

-(void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.edgesForExtendedLayout = UIRectEdgeAll;
    
    UIImageView *titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"nav_home_title"]];
    self.navigationItem.titleView = titleView;
    
    [self addNavigationBarLeftSearchItem];
    [self addNavigationBarRightMeItem];
    
    self.title = @"图文攻略";
    //AppDelegate *appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    NSString *path = [[NSString alloc] init];
    NSURLRequest *request = [[NSURLRequest alloc] init];
    //if ([((NSString*)appDelegate.guideURL) isEqualToString:@"guide"]){
        path = [[NSBundle mainBundle] pathForResource:@"guide" ofType:@"html"];
        request = [NSURLRequest requestWithURL:[NSURL fileURLWithPath:path]];
        //request = [NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://mengyoutu.cn/dungeon/dungeonrecord.php?deviceID=%@&nickName=%@&userDesc=%@&record=%@", @"deviceID100",@"PangXie",@"This is my name.", @"1234567890"]]];
    //}else if ([((NSString*)appDelegate.guideURL) isEqualToString:@"rank"]){
    //    request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://mengyoutu.cn/dungeon//dungeongetrecord.php"]];
    //}
    
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
