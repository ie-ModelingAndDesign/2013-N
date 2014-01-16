//
//  P2PView.h
//  JungleTimer
//
//  Created by Tatsuki IHA on 2014/01/08.
//  Copyright (c) 2014年 Tatsuki IHA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MultipeerConnectivity/MultipeerConnectivity.h>

@interface P2PView : UIViewController <MCBrowserViewControllerDelegate,
MCSessionDelegate>
@property (weak, nonatomic) IBOutlet UIButton *advertiserButton;
@property (weak, nonatomic) IBOutlet UIButton *browserButton;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityView;

@property(nonatomic,strong) MCPeerID *peerID;
@property(nonatomic,strong) MCSession *session;
@property(nonatomic,strong) MCAdvertiserAssistant *advertiserAssistant;
@property(nonatomic,strong) MCBrowserViewController *browserView;
- (IBAction)advertiserButtonPush:(id)sender;
- (IBAction)browserButtonPush:(id)sender;
@end
