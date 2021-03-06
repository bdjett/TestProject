//
//  ViewController.m
//  TestProject
//
//  Created by Jett, Brian on 9/29/16.
//  Copyright © 2016 Brian Jett. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIWebViewDelegate>

@property (nonatomic, strong, readonly) UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _webView = [[UIWebView alloc] init];
    self.webView.delegate = self;
    [self.view addSubview:self.webView];

    [self loadWebPage];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];

    self.webView.frame = self.view.bounds;
}


#pragma mark - Private methods

- (void)loadWebPage {
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"https://disney.com"]];

    [self.webView loadRequest:request];
}

#pragma mark - UIWebViewDelegate

@end
