//
//  CBViewController.m
//  IsJailBroken
//
//  Created by ly on 12/29/12.
//  Copyright (c) 2012 Lei Yan. All rights reserved.
//

#import "CBViewController.h"
#import "UIDevice+IsJailBroken.h"

@interface CBViewController ()

@end

@implementation CBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    if ([[UIDevice currentDevice] isJailBroken]) {
        self.resultLabel.text = @"已越狱";
    } else {
        self.resultLabel.text = @"未越狱";
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setResultLabel:nil];
    [super viewDidUnload];
}
@end
