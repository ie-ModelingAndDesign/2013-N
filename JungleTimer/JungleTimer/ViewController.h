//
//  ViewController.h
//  JungleTimer
//
//  Created by Tatsuki IHA on 2013/11/14.
//  Copyright (c) 2013年 Tatsuki IHA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Timer.h"

@interface ViewController : UIViewController{
    Timer * timer;
}
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)push:(id)sender;
@end
