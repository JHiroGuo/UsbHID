//
//  NSError+USBManager.m
//  USBManager
//
//  Created by HiroGuo on 3/1/19.
//  Copyright (c) 2019 HiroGuo  All rights reserved.
//

#import "NSError+USBManager.h"

NSString * const kUSBManagerErrorDomain = @"com.tiertime.USBManager";


@implementation NSError (USBManager)


+ (NSError *)createErrorMessage:(NSString *)message withCode:(NSInteger)_code {
	
	if (message.length) {
		return [NSError errorWithDomain:kUSBManagerErrorDomain code:_code userInfo:@{NSLocalizedDescriptionKey: message}];
	}else {
		return [NSError errorWithDomain:kUSBManagerErrorDomain code:_code userInfo:nil];
	}
	
}

@end
