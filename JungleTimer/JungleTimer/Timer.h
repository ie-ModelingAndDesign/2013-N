//
//  Timer.h
//  JungleTimer
//
//  Created by Tatsuki IHA on 2013/11/21.
//  Copyright (c) 2013年 Tatsuki IHA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Timer : NSObject
{
    UILabel *timeLabel;
    NSTimer *timer;
    int count;
    int time;
}
- (id) init:(UILabel *)label limit:(int) limit;
- (void) push;
- (void) start;
- (void) reset;
@end
