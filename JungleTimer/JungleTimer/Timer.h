//
//  Timer.h
//  JungleTimer
//
//  Created by Tatsuki IHA on 2013/11/21.
//  Copyright (c) 2013年 Tatsuki IHA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Timer : NSObject
{
    NSTimer *timer;
    int count;
}
- (id) init;
- (void) push;
- (void) start;
- (void) reset;
@end
