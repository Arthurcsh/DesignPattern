//
//  DesignPattern.h
//  DesignPattern
//
//  Created by chengshaohua on 2019/3/31.
//  Copyright © 2019 chshua@icloud.com. All rights reserved.
//

#import "DecoratorGPS.h"

@implementation DecoratorGPS

- (NSString *)callNumber {
    return [NSString stringWithFormat:@"%@ with GPS", [super callNumber]];
}

- (NSString *)sendMessage {
    return [NSString stringWithFormat:@"%@ with GPS", [super sendMessage]];
}

@end
