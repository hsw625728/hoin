//
//  Menu.h
//  solitaryDongeon
//
//  Created by Devine Lu Linvega on 2015-03-12.
//  Copyright (c) 2015 Devine Lu Linvega. All rights reserved.
//

#import "MLBBaseViewController.h"

@interface Guide : MLBBaseViewController

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (nonatomic, copy) NSString *url;
//@property (weak, nonatomic) IBOutlet UIWebView *webView;
//@property (weak, nonatomic) IBOutlet UIWebView *webView;

-(void)setUrl:(NSString *)url;

@end
