//
//  P2P.m
//  JungleTimer
//
//  Created by Tatsuki IHA on 2014/01/23.
//  Copyright (c) 2014年 Tatsuki IHA. All rights reserved.
//

#import "P2P.h"
#import "Summoner'sRift.h"

@implementation P2P
- (void)advertiser{
    _peerID =[[MCPeerID alloc] initWithDisplayName:@"Advertiser Name"];
    _session=[[MCSession alloc] initWithPeer:_peerID];
    _session.delegate = self;
    _advertiserAssistant = [[MCAdvertiserAssistant alloc] initWithServiceType:@"jungletimer"
                                                                discoveryInfo:nil
                                                                      session:_session];
    [_advertiserAssistant start];
}

- (void)browser{
    _peerID = [[MCPeerID alloc] initWithDisplayName:@"Browser Name"];
    _session = [[MCSession alloc] initWithPeer:_peerID];
    _session.delegate = self;
}

-(void)sendData:(NSString *)str{
    NSData *data =[str dataUsingEncoding:NSUTF8StringEncoding];
    NSError *error;
    [self.session sendData:data
                   toPeers:[_session connectedPeers]
                  withMode:MCSessionSendDataReliable
                     error:&error];
}

- (void)session:(MCSession *)session peer:(MCPeerID *)peerID didChangeState:(MCSessionState)state {
    switch (state) {
        case MCSessionStateConnected: {
            dispatch_async(dispatch_get_main_queue(), ^{
            });
            
            // This line only necessary for the advertiser. We want to stop advertising our services
            // to other browsers when we successfully connect to one.
            [_advertiserAssistant stop];
            break;
        }
        case MCSessionStateNotConnected: {
            dispatch_async(dispatch_get_main_queue(), ^{
            });
            break;
        }
        default:
            break;
    }
}


- (void)session:(MCSession *)session didReceiveData:(NSData *)data fromPeer:(MCPeerID *)peerID {
    NSString *message =[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        dispatch_async(dispatch_get_main_queue(), ^{
            if ([message  isEqual: @"pRed"]){
                [_view.pRedTimer push];
            }
        });
}

// Required MCSessionDelegate protocol methods but are unused in this application.

- (void)                      session:(MCSession *)session
    didStartReceivingResourceWithName:(NSString *)resourceName
                             fromPeer:(MCPeerID *)peerID
                         withProgress:(NSProgress *)progress {
    
}

- (void)     session:(MCSession *)session
    didReceiveStream:(NSInputStream *)stream
            withName:(NSString *)streamName
            fromPeer:(MCPeerID *)peerID {
    
}

- (void)                       session:(MCSession *)session
    didFinishReceivingResourceWithName:(NSString *)resourceName
                              fromPeer:(MCPeerID *)peerID
                                 atURL:(NSURL *)localURL
                             withError:(NSError *)error {
    
}
@end