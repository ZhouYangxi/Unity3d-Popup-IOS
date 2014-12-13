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

-(void) dealloc
{
    [super dealloc];
}

void ShowAlertView(const char* _title, const char * _message, const char * _confirmText)
{
    NSString * str1 = [NSString stringWithUTF8String:_title];
    NSString * str2 = [NSString stringWithUTF8String:_message];
    NSString * str3 = [NSString stringWithUTF8String:_confirmText];
    
    [[Popup Instance] ShowAlertView:str1 Message:str2 ConfirmText:str3];
}

void ShowAlertViewWithTwoButtons(const char* _title, const char * _message, const char * _cancelText, const char * _okText)
{
    NSString * str1 = [NSString stringWithUTF8String:_title];
    NSString * str2 = [NSString stringWithUTF8String:_message];
    NSString * str3 = [NSString stringWithUTF8String:_cancelText];
    NSString * str4 = [NSString stringWithUTF8String:_okText];

    [[Popup Instance]ShowAlertView:str1 Message:str2 CancelText:str3 OkText:str4];
}

-(void) ShowAlertView:(NSString *)_title Message:(NSString *)_message ConfirmText:(NSString *)_confirmText
{
    UIAlertView * av = [[UIAlertView alloc] initWithTitle:_title message:_message delegate:self cancelButtonTitle:_confirmText otherButtonTitles: nil];
    
    [av show];
    
    [av release];
}

-(void)ShowAlertView:(NSString *)_title Message:(NSString *)_message CancelText:(NSString *)_cancelText OkText:(NSString *)_okText
{
    UIAlertView * av = [[UIAlertView alloc] initWithTitle:_title message:_message delegate:self cancelButtonTitle:_cancelText otherButtonTitles: _okText,nil];
    
    [av show];
    
    [av release];
}
@end
