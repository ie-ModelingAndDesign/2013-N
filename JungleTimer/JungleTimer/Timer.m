//
//  Timer.m
//  JungleTimer
//
//  Created by Tatsuki IHA on 2013/11/21.
//  Copyright (c) 2013年 Tatsuki IHA. All rights reserved.
//

#import "Timer.h"

@implementation Timer
-(id)init:(UILabel *)label limit:(int) limit button:(UIButton *)button buttonImage:(NSString *) buttonImage buttonClearImage:(NSString *) buttonClearImage{
    _timeLabel = label;
    _count = limit;
    _time = _count;
    _timeLabel.text = [NSString stringWithFormat:_count%60<10?@"%d:0%d":@"%d:%d",_count/60,_count%60];
    _button = button;
    _buttonImage = buttonImage;
    _buttonClearImage = buttonClearImage;
    return self;
}

-(void)push{
    if ([_timer isValid]) {
        [self reset];
        return;
    }
    [self start];
}

-(void)start{
    _timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(action) userInfo:nil repeats:YES];
    [_button setImage:[UIImage imageNamed:_buttonClearImage] forState:UIControlStateNormal];
}

-(void)reset{
    [_timer invalidate];
    _count=_time;
    _timeLabel.text = [NSString stringWithFormat:_count%60<10?@"%d:0%d":@"%d:%d",_count/60,_count%60];
    [_button setImage:[UIImage imageNamed:_buttonImage] forState:UIControlStateNormal];
}

-(void) action{
    if (_count <= 0) {
        [self reset];
        return;
    }
    _count--;
    _timeLabel.text = [NSString stringWithFormat:_count%60<10?@"%d:0%d":@"%d:%d",_count/60,_count%60];
}
@end
