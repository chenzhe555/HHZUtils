//
//  HHZKitTool.m
//  iOS-HHZUniversal
//
//  Created by 陈哲#376811578@qq.com on 16/11/16.
//  Copyright © 2016年 陈哲是个好孩子. All rights reserved.
//

#import "HHZKitTool.h"

@implementation HHZKitTool
+(UIWindow *)getMainWindow
{
    UIWindow * window = [UIApplication sharedApplication].keyWindow;
    if (!window)
    {
        window = [[UIApplication sharedApplication].windows objectAtIndex:0];
    }
    return window;
}

//+(void)changeTopStateBarColor:(UIColor *)color
//{
//    UIApplication * app = [UIApplication sharedApplication];
//    id obj = [app valueForKeyPath:@"statusBar"];
//    NSArray * arr = [obj getPrivateApiMethod];
//
//    for (int i = 0; i < arr.count; i++)
//    {
//        if ([((NSString *)[arr objectAtIndex:i]) isEqualToString:@"foregroundColor"])
//        {
//            [obj setValue:color forKey:((NSString *)[arr objectAtIndex:i])];
//        }
//    }
//}

+(id)getProjectInfo:(NSString *)infoKey
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:infoKey];
}

+(UIViewController *)getCurrentShowVC
{
    UIViewController * rootVC = [UIApplication sharedApplication].keyWindow.rootViewController;
    return [self getCurrentVCFrom:rootVC];
}

+(UIViewController *)getCurrentVCFrom:(UIViewController *)rootVC
{
    UIViewController * currentVC = nil;
    
    if ([rootVC presentedViewController])
    {
        //presented
        currentVC = [rootVC presentedViewController];
    }
    else if ([rootVC isKindOfClass:[UITabBarController class]])
    {
        //tabbar
        currentVC = [self getCurrentVCFrom:[(UITabBarController *)rootVC selectedViewController]];
    }
    else if ([rootVC isKindOfClass:[UINavigationController class]])
    {
        //navi
        currentVC = [self getCurrentVCFrom:[(UINavigationController *)rootVC visibleViewController]];
    }
    else
    {
        //vc
        currentVC = rootVC;
    }
    return currentVC;
}
@end
