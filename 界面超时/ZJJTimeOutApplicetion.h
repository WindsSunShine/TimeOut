//
//  ZJJTimeOutApplicetion.h
//  界面超时
//
//  Created by 张建军 on 16/6/24.
//  Copyright © 2016年 张建军. All rights reserved.
//

#import <UIKit/UIKit.h>

// 定义未操作的时间（分钟）

#define ZApplicationTimeOutMinutes  1

// 定义超时通知的名字
#define ZApplicationTimeOutName  @"ZApplicationTimeOutName"

@interface ZJJTimeOutApplicetion : UIApplication

{
    
    NSTimer * _myOutTimer;
}


-(void)resetTimer;



@end
