//
//  P2PView.h
//  JungleTimer
//
//  Created by Tatsuki IHA on 2014/01/08.
//  Copyright (c) 2014年 Tatsuki IHA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MultipeerConnectivity/MultipeerConnectivity.h>
#import "P2P.h"

@interface P2PView : UITableViewController <MCBrowserViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UIButton *browserButton;
@property (weak, nonatomic) IBOutlet UIButton *advertiserButton;
@property (weak, nonatomic) IBOutlet UIButton *goViewButton;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityView;
@property (nonatomic) P2P *p2p;
@property(nonatomic,strong) MCBrowserViewController *browserView;
- (IBAction)goViewPush:(id)sender;
- (IBAction)browserButtonPush:(id)sender;
- (IBAction)advertiserButtonPush:(id)sender;
@end
