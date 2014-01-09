//
//  P2PView.h
//  JungleTimer
//
//  Created by Tatsuki IHA on 2014/01/08.
//  Copyright (c) 2014年 Tatsuki IHA. All rights reserved.
//

#import <UIKit/UIKit.h>
@import MultipeerConnectivity;

@interface P2PView : UIViewController

@property(nonatomic,strong) MCPeerID *peerID;
@property(nonatomic,strong) MCSession *session;
@end
