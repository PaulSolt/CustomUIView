//
//  ViewController.m
//  CustomView
//
//  Created by Paul Solt on 4/28/14.
//  Copyright (c) 2014 Paul Solt. All rights reserved.
//

#import "ViewController.h"
#import "SubClassView.h"
#import "LabelMadness.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    
    // Add a custom view's programmatically (position using 1/2 width and height)
    
    SubClassView *oneView = [[SubClassView alloc] init];
    oneView.center = CGPointMake(80 + 80, 282 + 40);
    oneView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:oneView];
    
    LabelMadness *labelMadness = [[LabelMadness alloc] init];
    labelMadness.center = CGPointMake(60 + 100, 370 + 50);
    labelMadness.backgroundColor = [UIColor greenColor];
    [self.view addSubview:labelMadness];
}

@end
