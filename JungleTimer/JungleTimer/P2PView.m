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
    _p2p = [P2P alloc];
    [_p2p setView:[self.storyboard instantiateViewControllerWithIdentifier:@"summoner"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)advertiserButtonPush:(id)sender
{
    [_p2p advertiser];
    _advertiserButton.hidden = YES;
    _browserButton.hidden = YES;
    _activityView.hidden = NO;
}

- (IBAction)browserButtonPush:(id)sender {
    [_p2p browser];
    _browserView = [[MCBrowserViewController alloc] initWithServiceType:@"jungletimer"
                                                                session:_p2p.session];
    _browserView.delegate = self;
    [self presentViewController:_browserView animated:YES completion:nil];
    _advertiserButton.hidden = YES;
    _browserButton.hidden = YES;
}

- (IBAction)Test:(id)sender {
    [self presentModalViewController:_p2p.view animated:YES];
}


- (void)browserViewControllerDidFinish:(MCBrowserViewController *)browserViewController {
    [self dismissViewControllerAnimated:YES completion:^{
        [_browserView.browser stopBrowsingForPeers];
        [self presentModalViewController:_p2p.view animated:YES];
    }];
    
}

- (void)browserViewControllerWasCancelled:(MCBrowserViewController *)browserViewController {
    [self dismissViewControllerAnimated:YES completion:^{
        [_browserView.browser stopBrowsingForPeers];
        _advertiserButton.hidden = NO;
        _browserButton.hidden = NO;
    }];
}
@end
