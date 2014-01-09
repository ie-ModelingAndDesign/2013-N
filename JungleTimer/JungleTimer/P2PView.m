//
//  P2PView.m
//  JungleTimer
//
//  Created by Tatsuki IHA on 2014/01/08.
//  Copyright (c) 2014年 Tatsuki IHA. All rights reserved.
//

#import "P2PView.h"
@import MultipeerConnectivity;
@interface P2PView ()

@end

@implementation P2PView

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
- (IBAction)advertiserButtanPush:(id)sender
{
    _peerID =[[MCPeerID alloc] initWithDisplayName:@"Advertiser Name"];
    _session=[[MCSession alloc] initWithPeer:_peerID];
    _session.delegate=self;
    MCAdvertiserAssistant *advertiserAssistant = [[MCAdvertiserAssistant alloc] initWithServiceType:@"multipeer"
                                                                                      discoveryInfo:nil
                                                                                            session:_session];
    [advertiserAssistant start];
}

@end
