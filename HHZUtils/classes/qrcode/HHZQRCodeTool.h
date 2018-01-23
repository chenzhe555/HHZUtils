//
//  HHZQRCodeTool.h
//  HHZUtils
//
//  Created by 陈哲是个好孩子 on 2018/1/23.
//  Copyright © 2018年 陈哲是个好孩子. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HHZQRCodeTool : NSObject

/**
 生成二维码

 @param QRString 要生成二维码的字符串
 */
+(UIImage *)generateCIQRCodeImage:(NSString *)QRString size:(CGFloat)size;

@end
