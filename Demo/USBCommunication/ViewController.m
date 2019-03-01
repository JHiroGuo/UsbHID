//
//  ViewController.m
//  USBCommunication
//
//  Created by GJH on 2019/3/1.
//  Copyright © 2019 GJH. All rights reserved.
//

#import "ViewController.h"
#import <IOKit/hid/IOHIDLib.h>
#import <USBDeviceManager/USBManager.h>

@interface ViewController()

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    USBConnector *usbConnector =[USBConnector sharedManager];
    
    /*鼠标VID 、PID */
    NSInteger vID = 0x046d;
    NSInteger pID = 0xc077;
    NSError *error;
    [usbConnector startMonitoringForVendorID:vID andProductID:pID error:&error];
    usbConnector.delegate = (id)self;
    
}

/**
 Called when there is new Data From Input report
 */
- (void)didReceiveNewInputData:(NSData * __nullable)data
{
    NSLog(@"didReceiveNewInputData : %@",data);
    
}

/**
 Called when a new USB Device has been attached to the USB Bus
 
 @param usbmngr An instance of the USBConnector
 @param device The USBDevice that has been connected
 */
- (void)usbConnector:(USBConnector * __nonnull)usbmngr didAttachDevice:(USBDevice * __nonnull)device
{
    device.delegate = self;
    NSLog(@"didAttachDevice : %@\n %@",device,usbmngr.devices);
}

/**
 Called when a new USB Device has been removed from  the USB Bus
 
 @param usbmngr An instance of the USBConnector
 @param device The USBDevice that has been removed
 */
- (void)usbConnector:(USBConnector * __nonnull)usbmngr didRemoveDevice:(USBDevice * __nonnull)device
{
    NSLog(@"didRemoveDevice : %@",device);
}



- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
