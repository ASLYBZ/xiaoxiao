//
//  UIView+ShowAlert.m
//  DFRomwe
//
//  Created by xyxziMac on 15/12/24.
//  Copyright © 2015年 heyan. All rights reserved.
//

#import "UIView+ShowAlert.h"
//#import "MBProgressHUD.h"
//#import "YTKBaseRequest.h"

@implementation UIView (ShowAlert)


-(void)showAlertView:(NSString*)string
{
    UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@""
                                                    message:string
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil, nil];
    [alert show];
}




- (void) myMBProgressShowView:(id)object
{
    
//    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self animated:YES];
//    // Configure for text only and offset down
//    hud.mode = MBProgressHUDModeText;
//    hud.margin = 10.f;
//    hud.removeFromSuperViewOnHide = YES;
//    [hud hide:YES afterDelay:2];
//    hud.detailsLabelFont = [UIFont fontWithName:@"" size:17];
//    
//    if ([object isKindOfClass:[YTKBaseRequest class]]) {
//        YTKBaseRequest * request = (YTKBaseRequest*)object;
//        if (request.responseStatusCode) {
//            //请求地址、服务器异常响应不到数据
//            hud.detailsLabelText = MBLocalizedString(KServerIsBusyNow);
//        }
//        else
//        {
//            //没网
//            hud.detailsLabelText = MBLocalizedString(KNetworkFailed);
//        }
//    }else if ([object isKindOfClass:[NSString class]]){
//        NSString *string = (NSString *)object;
//        hud.detailsLabelText = string;
//    }else {
//         hud.detailsLabelText = MBLocalizedString(KNetworkFailed);
//    }
//    
//    
//  
//    

}

@end
