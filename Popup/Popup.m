//
//  Popup.m
//  Popup
//
//  Created by 周杨稀 on 14/12/12.
//  Copyright (c) 2014年 OIMA. All rights reserved.
//

#import "Popup.h"

@implementation Popup

+(Popup *)Instance
{
    static Popup * instance;
    
    @synchronized(self)
    {
        if(instance == nil)
        {
            instance = [[Popup alloc] init];
        }
    }
    
    return instance;
}

@end
