//
//  Popup.h
//  Popup
//
//  Created by 周杨稀 on 14/12/12.
//  Copyright (c) 2014年 OIMA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Popup : NSObject

+(Popup *)Instance;

extern void UnitySendMessage(const char* _objName, const char* _callBackName, const char* _paramsInString);

@end
