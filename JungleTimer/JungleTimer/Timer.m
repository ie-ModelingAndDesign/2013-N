//
//  Timer.m
//  JungleTimer
//
//  Created by Tatsuki IHA on 2013/11/21.
//  Copyright (c) 2013年 Tatsuki IHA. All rights reserved.
//

#import "Timer.h"

@implementation Timer
-(id)init{
    count = 300;
    return self;
}
-(void)start{
    timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(action) userInfo:nil repeats:YES];
}

-(void)reset{
    if([timer isValid]){
        [timer invalidate];
    }
}

-(void) action{
    if (count <= 0) {
        [self reset];
    }
    count--;
}
@end
