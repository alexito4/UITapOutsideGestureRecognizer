//
//  ViewController.m
//  AMPTouchOutside
//
//  Created by Alejandro Martinez on 05/07/12.
//  Copyright (c) 2012 Alejandro Martinez. All rights reserved.
//

#import "ViewController.h"
#import "UITapOutsideGestureRecognizer.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UITapOutsideGestureRecognizer *tap = [[UITapOutsideGestureRecognizer alloc] initWithTarget:self action:@selector(tapOutside:) view:self.importantView];
    [self.view addGestureRecognizer:tap];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tapOutside:(UIGestureRecognizer *)tap {
    NSLog(@"tap outside!");
}

@end
