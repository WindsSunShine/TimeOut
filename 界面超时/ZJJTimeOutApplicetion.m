//
//  ZJJTimeOutApplicetion.m
//  界面超时
//
//  Created by 张建军 on 16/6/24.
//  Copyright © 2016年 张建军. All rights reserved.
//

#import "ZJJTimeOutApplicetion.h"

@implementation ZJJTimeOutApplicetion


-(void)sendEvent:(UIEvent *)event {
    
    [super sendEvent:event];
    
    if (!_myOutTimer) {
        
        [self resetTimer];
    
    }
    
    NSSet * allTouches = [event allTouches];
    
    if ([allTouches count] > 0) {
        
        UITouchPhase phase = ((UITouch *)[allTouches anyObject]).phase;
        
        
        if (phase == UITouchPhaseBegan) {
            
            [self resetTimer];
        }
    }
}


-(void)resetTimer {
    
    if (_myOutTimer) {
        
        [_myOutTimer invalidate];
        
    }
    
  // 转换超时的时间
    
    int timeLater = ZApplicationTimeOutMinutes *  60;
    
    _myOutTimer = [NSTimer scheduledTimerWithTimeInterval:timeLater target:self selector:@selector(zTimerExceeded) userInfo:nil repeats:NO];
    
    
}

// 到达超时时间发送超时通知

-(void)zTimerExceeded{
    
    [[NSNotificationCenter defaultCenter]postNotificationName:ZApplicationTimeOutName object:nil];
    
    
}




@end
