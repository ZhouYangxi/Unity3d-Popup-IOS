//
//  Popup.h
//  Popup
//
//  Created by 周杨稀 on 14/12/12.
//  Copyright (c) 2014年 OIMA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Popup : NSObject

+(Popup *)Instance;
-(void) dealloc;

extern void UnitySendMessage(const char* _objName, const char* _callBackName, const char* _paramsInString);




void ShowAlertView(const char* _title, const char * _message, const char * _confirmText);
-(void) ShowAlertView : (NSString *) _title Message: (NSString *) _message ConfirmText : (NSString *) _confirmText;

void ShowAlertViewWithTwoButtons(const char* _title, const char * _message, const char * _cancelText, const char * _okText);
-(void) ShowAlertView:(NSString *)_title Message:(NSString *)_message CancelText:(NSString *)_cancelText OkText:(NSString *)_okText;


@end
