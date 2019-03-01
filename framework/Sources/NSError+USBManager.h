//
//  NSError+USBManager.h
//  USBManager
//
//  Created by HiroGuo on 3/1/19.
//  Copyright (c) 2019 HiroGuo  All rights reserved.
//

#import <Foundation/Foundation.h>

FOUNDATION_EXPORT NSString * const kUSBManagerErrorDomain;



@interface NSError (USBManager)


+ (NSError *)createErrorMessage:(NSString *)message withCode:(NSInteger)code;

@end
