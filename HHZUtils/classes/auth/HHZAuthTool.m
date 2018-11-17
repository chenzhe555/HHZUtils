//
//  HHZAuthTool.m
//  HHZUtils
//
//  Created by yunshan on 2018/11/17.
//  Copyright © 2018年 陈哲是个好孩子. All rights reserved.
//

#import "HHZAuthTool.h"
#import <Photos/Photos.h>

@implementation HHZAuthTool
+(void)requestPhotoLibrary:(AuthBlock)authBlock
{
    PHAuthorizationStatus authStatus = [PHPhotoLibrary authorizationStatus];
    //用户尚未授权
    if (authStatus == PHAuthorizationStatusNotDetermined)
    {
        [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
            if (status == PHAuthorizationStatusAuthorized)
            {
                if (authBlock) authBlock(@{@"ret": @(1)});
            }
        }];
    }
    //用户已经授权
    else if (authStatus == PHAuthorizationStatusAuthorized)
    {
       if (authBlock) authBlock(@{@"ret": @(1)});
    }
    //用户拒绝授权
    else
    {
        if (authBlock) authBlock(@{@"ret": @(0)});
    }
}
@end
