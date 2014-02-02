//
//  P2P.h
//  JungleTimer
//
//  Created by Tatsuki IHA on 2014/01/23.
//  Copyright (c) 2014年 Tatsuki IHA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MultipeerConnectivity/MultipeerConnectivity.h>
@class Summoner_sRift;

@interface P2P : NSObject<MCSessionDelegate>

@property(nonatomic,strong) MCPeerID *peerID;
@property(nonatomic,strong) MCSession *session;
@property(nonatomic,strong) MCAdvertiserAssistant *advertiserAssistant;
@property(nonatomic,strong) MCBrowserViewController *browserView;
@property(nonatomic) Summoner_sRift *view;
- (void)setView:(Summoner_sRift *)view;
- (void)advertiser;
- (void)browser;
- (void)sendData:(NSString *)str;
@end
