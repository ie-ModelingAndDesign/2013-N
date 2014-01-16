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
    [_activityView startAnimating];
    _activityView.hidden = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)advertiserButtonPush:(id)sender
{
    _peerID =[[MCPeerID alloc] initWithDisplayName:@"Advertiser Name"];
    _session=[[MCSession alloc] initWithPeer:_peerID];
    _session.delegate = self;
    _advertiserAssistant = [[MCAdvertiserAssistant alloc] initWithServiceType:@"jungletimer"
                                                                discoveryInfo:nil
                                                                      session:_session];
    [_advertiserAssistant start];
    _advertiserButton.hidden = YES;
    _browserButton.hidden = YES;
    _activityView.hidden = NO;
}

- (IBAction)browserButtonPush:(id)sender {
    _peerID = [[MCPeerID alloc] initWithDisplayName:@"Browser Name"];
    _session = [[MCSession alloc] initWithPeer:_peerID];
    _session.delegate = self;
    
    _browserView = [[MCBrowserViewController alloc] initWithServiceType:@"jungletimer"
                                                                session:_session];
    _browserView.delegate = self;
    [self presentViewController:_browserView animated:YES completion:nil];
    _advertiserButton.hidden = YES;
    _browserButton.hidden = YES;
}


- (void)browserViewControllerDidFinish:(MCBrowserViewController *)browserViewController {
    [self dismissViewControllerAnimated:YES completion:^{
        [_browserView.browser stopBrowsingForPeers];
    }];
}

- (void)browserViewControllerWasCancelled:(MCBrowserViewController *)browserViewController {
    [self dismissViewControllerAnimated:YES completion:^{
        [_browserView.browser stopBrowsingForPeers];
        _advertiserButton.hidden = NO;
        _browserButton.hidden = NO;
    }];
}


- (void)session:(MCSession *)session peer:(MCPeerID *)peerID didChangeState:(MCSessionState)state {
    switch (state) {
        case MCSessionStateConnected: {
            dispatch_async(dispatch_get_main_queue(), ^{
                _activityView.hidden = YES;
            });
            
            // This line only necessary for the advertiser. We want to stop advertising our services
            // to other browsers when we successfully connect to one.
            [_advertiserAssistant stop];
            break;
        }
        case MCSessionStateNotConnected: {
            dispatch_async(dispatch_get_main_queue(), ^{
                _advertiserButton.hidden = NO;
                _browserButton.hidden = NO;
            });
            break;
        }
        default:
            break;
    }
}

- (void)session:(MCSession *)session didReceiveData:(NSData *)data fromPeer:(MCPeerID *)peerID {
    NSPropertyListFormat format;
    NSDictionary *receivedData = [NSPropertyListSerialization propertyListWithData:data
                                                                           options:0
                                                                            format:&format
                                                                             error:NULL];
    NSString *message = receivedData[@"message"];
    if ([message length]) {
        dispatch_async(dispatch_get_main_queue(), ^{
            UIAlertView *messageAlert = [[UIAlertView alloc] initWithTitle:@"Received message"
                                                                   message:message
                                                                  delegate:self
                                                         cancelButtonTitle:@"OK"
                                                         otherButtonTitles:nil];
            [messageAlert show];
        });
    }
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
