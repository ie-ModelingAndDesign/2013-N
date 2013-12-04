//
//  Summoner'sRift.m
//  JungleTimer
//
//  Created by Tatsuki IHA on 2013/12/04.
//  Copyright (c) 2013年 Tatsuki IHA. All rights reserved.
//

#import "Summoner'sRift.h"
#import "Timer.h"

@interface Summoner_sRift ()

@end

@implementation Summoner_sRift

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
    pRedTimer = [[Timer alloc]init:self.pRed limit:300];
    pBlueTimer = [[Timer alloc]init:self.pBlue limit:300];
    bRedTimer = [[Timer alloc]init:self.bRed limit:300];
    bBlueTimer = [[Timer alloc]init:self.bBlue limit:300];
    dragonTimer = [[Timer alloc]init:self.dragon limit:360];
    baronTimer = [[Timer alloc]init:self.baron limit:420];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pRedPush:(id)sender {
    [pRedTimer push];
}

- (IBAction)pBluePush:(id)sender {
    [pBlueTimer push];
}

- (IBAction)bRedPush:(id)sender {
    
    [bRedTimer push];
}

- (IBAction)bBluePush:(id)sender {
    [bBlueTimer push];
}


- (IBAction)dragonPush:(id)sender {
    [dragonTimer push];
}

- (IBAction)baronPush:(id)sender {
    [baronTimer push];
}
@end
