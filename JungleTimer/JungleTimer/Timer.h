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
@property (nonatomic) UILabel *timeLabel;
@property (nonatomic) NSTimer *timer;
@property (nonatomic)int count;
@property (nonatomic)int time;
@property (nonatomic)UIButton *button;
@property (nonatomic)NSString *buttonImage;
@property (nonatomic)NSString *buttonClearImage;
- (id) init:(UILabel *)label limit:(int) limit button:(UIButton *)button buttonImage:(NSString *) buttonImage buttonClearImage:(NSString *) buttonClearImage;

- (void) push;
- (void) start;
- (void) reset;
- (void) action;
@end
