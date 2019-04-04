//
//  DesignPattern.h
//  DesignPattern
//
//  Created by chengshaohua on 2019/3/31.
//  Copyright © 2019 chshua@icloud.com. All rights reserved.
//

#import "DecoratorWifi.h"

@implementation DecoratorWifi

- (NSString *)callNumber {
    return [NSString stringWithFormat:@"%@ with Wifi", [super callNumber]];
}

- (NSString *)sendMessage {
    return [NSString stringWithFormat:@"%@ with Wifi", [super sendMessage]];
}

@end
