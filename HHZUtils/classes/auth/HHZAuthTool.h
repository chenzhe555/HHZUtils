//
//  HHZAuthTool.h
//  HHZUtils
//
//  Created by yunshan on 2018/11/17.
//  Copyright © 2018年 陈哲是个好孩子. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^AuthBlock)(NSDictionary * result);

@interface HHZAuthTool : NSObject
///检测相册访问权限
+(void)requestPhotoLibrary:(AuthBlock)authBlock;
@end
