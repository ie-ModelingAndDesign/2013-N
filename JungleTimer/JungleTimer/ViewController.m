//
//  ViewController.m
//  JungleTimer
//
//  Created by Tatsuki IHA on 2013/11/14.
//  Copyright (c) 2013年 Tatsuki IHA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    timer=[[Timer alloc]init:(self.label)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)push:(id)sender {
    [timer push];
}
@end
