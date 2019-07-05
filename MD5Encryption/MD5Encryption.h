//
//  MD5Encryption.h
//  ZJInternetHospital
//  MD5 16位加密
//  Created by gulu on 2017/11/4.
//  Copyright © 2017年 gulu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MD5Encryption : NSObject
+ (NSString *)md5Encryption:(NSString *)input;
@end
