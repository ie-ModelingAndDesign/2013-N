//
//  Summoner'sRift.h
//  JungleTimer
//
//  Created by Tatsuki IHA on 2013/12/04.
//  Copyright (c) 2013年 Tatsuki IHA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Timer.h"

@interface Summoner_sRift : UIViewController{
    Timer *pRedTimer;
    Timer *pBlueTimer;
    Timer *bRedTimer;
    Timer *bBlueTimer;
    Timer *dragonTimer;
    Timer *baronTimer;
}
@property (weak, nonatomic) IBOutlet UILabel *pRed;

@property (weak, nonatomic) IBOutlet UILabel *pBlue;

@property (weak, nonatomic) IBOutlet UILabel *bRed;

@property (weak, nonatomic) IBOutlet UILabel *bBlue;

@property (weak, nonatomic) IBOutlet UILabel *dragon;

@property (weak, nonatomic) IBOutlet UILabel *baron;

- (IBAction)pRedPush:(id)sender;

- (IBAction)pBluePush:(id)sender;

- (IBAction)bRedPush:(id)sender;

- (IBAction)bBluePush:(id)sender;

- (IBAction)dragonPush:(id)sender;

- (IBAction)baronPush:(id)sender;

@end
