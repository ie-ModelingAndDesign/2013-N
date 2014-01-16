//
//  Timer.m
//  JungleTimer
//
//  Created by Tatsuki IHA on 2013/11/21.
//  Copyright (c) 2013年 Tatsuki IHA. All rights reserved.
//

#import "Timer.h"

@implementation Timer
-(id)init:(UILabel *)label limit:(int) limit{
    timeLabel = label;
    count = limit;
    time = count;
    timeLabel.text = [NSString stringWithFormat:count%60<10?@"%d:0%d":@"%d:%d",count/60,count%60];
    return self;
}

-(void)push{
    if ([self->timer isValid]) {
        [self reset];
        return;
    }
    [self start];
}

-(void)start{
    timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(action) userInfo:nil repeats:YES];
}

-(void)reset{
    [timer invalidate];
    count=time;
    timeLabel.text = [NSString stringWithFormat:count%60<10?@"%d:0%d":@"%d:%d",count/60,count%60];
}

-(void) action{
    if (count <= 0) {
        [self reset];
        return;
    }
    count--;
    timeLabel.text = [NSString stringWithFormat:count%60<10?@"%d:0%d":@"%d:%d",count/60,count%60];
}
@end
