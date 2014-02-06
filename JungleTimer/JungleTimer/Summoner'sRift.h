//
//  Summoner'sRift.h
//  JungleTimer
//
//  Created by Tatsuki IHA on 2013/12/04.
//  Copyright (c) 2013年 Tatsuki IHA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Timer.h"
@class P2P;

@interface Summoner_sRift : UIViewController{
}
@property (weak, nonatomic) IBOutlet UILabel *pRed;
@property (weak, nonatomic) IBOutlet UILabel *pBlue;
@property (weak, nonatomic) IBOutlet UILabel *bRed;
@property (weak, nonatomic) IBOutlet UILabel *bBlue;
@property (weak, nonatomic) IBOutlet UILabel *dragon; 
@property (weak, nonatomic) IBOutlet UILabel *baron;
@property (weak, nonatomic) IBOutlet UIButton *pRedButton;
@property (weak, nonatomic) IBOutlet UIButton *pBlueButton;
@property (weak, nonatomic) IBOutlet UIButton *bRedButton;
@property (weak, nonatomic) IBOutlet UIButton *bBlueButton;
@property (weak, nonatomic) IBOutlet UIButton *dragonButton;
@property (weak, nonatomic) IBOutlet UIButton *baronButton;

@property (nonatomic) P2P *p2p;
@property (nonatomic) Timer *pRedTimer;
@property (nonatomic) Timer *pBlueTimer;
@property (nonatomic) Timer *bRedTimer;
@property (nonatomic) Timer *bBlueTimer;
@property (nonatomic) Timer *dragonTimer;
@property (nonatomic) Timer *baronTimer;

- (void)setP2P:(P2P *)p2p;

- (IBAction)pRedPush:(id)sender;

- (IBAction)pBluePush:(id)sender;

- (IBAction)bRedPush:(id)sender;

- (IBAction)bBluePush:(id)sender;

- (IBAction)dragonPush:(id)sender;

- (IBAction)baronPush:(id)sender;

@end
