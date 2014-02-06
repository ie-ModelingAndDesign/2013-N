//
//  Summoner'sRift.m
//  JungleTimer
//
//  Created by Tatsuki IHA on 2013/12/04.
//  Copyright (c) 2013年 Tatsuki IHA. All rights reserved.
//

#import "Summoner'sRift.h"
#import "P2P.h"

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
    _pRedTimer = [[Timer alloc]init:self.pRed limit:300  button:_pRedButton buttonImage:@"elder.png" buttonClearImage:@"elderi.png"];
    _pBlueTimer = [[Timer alloc]init:self.pBlue limit:300 button:_pBlueButton buttonImage:@"ancient.png" buttonClearImage:@"ancienti.png"];
    _bRedTimer = [[Timer alloc]init:self.bRed limit:300 button:_bRedButton buttonImage:@"elder.png" buttonClearImage:@"elderi.png"];
    _bBlueTimer = [[Timer alloc]init:self.bBlue limit:300 button:_bBlueButton buttonImage:@"ancient.png" buttonClearImage:@"ancienti.png"];
    _dragonTimer = [[Timer alloc]init:self.dragon limit:360 button:_dragonButton buttonImage:@"dragon.png" buttonClearImage:@"dragoni.png"];
    _baronTimer = [[Timer alloc]init:self.baron limit:420 button:_baronButton buttonImage:@"orgdemeera.png" buttonClearImage:@"orgdemeerai.png"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setP2P:(P2P *)p2p{
    _p2p = p2p;
}

- (IBAction)pRedPush:(id)sender {
    [_pRedTimer push];
    [_p2p sendData:@"pRed"];
}

- (IBAction)pBluePush:(id)sender {
    [_pBlueTimer push];
    [_p2p sendData:@"pBlue"];
}

- (IBAction)bRedPush:(id)sender {
    
    [_bRedTimer push];
    [_p2p sendData:@"bRed"];
}

- (IBAction)bBluePush:(id)sender {
    [_bBlueTimer push];
    [_p2p sendData:@"bBlue"];
}


- (IBAction)dragonPush:(id)sender {
    [_dragonTimer push];
    [_p2p sendData:@"dragon"];
}

- (IBAction)baronPush:(id)sender {
    [_baronTimer push];
    [_p2p sendData:@"baron"];
}
@end