//
//  Summoner'sRiftViewController.m
//  JungleTimer
//
//  Created by Tatsuki IHA on 2013/11/21.
//  Copyright (c) 2013年 Tatsuki IHA. All rights reserved.
//

#import "Summoner'sRiftViewController.h"
#import "Timer.h"
@interface Summoner_sRiftViewController ()

@end

@implementation Summoner_sRiftViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)TimerPRedStart:(id)sender {
    Timer* timer=[[Timer alloc]init];
    [timer push] ;
}
@end
