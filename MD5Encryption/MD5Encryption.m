//
//  MD5Encryption.m
//  ZJInternetHospital
//
//  Created by gulu on 2017/11/4.
//  Copyright © 2017年 gulu. All rights reserved.
//

#import "MD5Encryption.h"
#import<CommonCrypto/CommonDigest.h>

@implementation MD5Encryption
+ (NSString *)md5Encryption:(NSString *)input {
    if (input && input.length>0) {
        const char *cStr = [input UTF8String];
        unsigned char digest[CC_MD5_DIGEST_LENGTH];
        CC_MD5(cStr,(CC_LONG)strlen(cStr),digest); // This is the md5 call
        NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
        for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++)
            [output appendFormat:@"%02x", digest[i]];
        return  output;
    }
    return input;
}
@end
