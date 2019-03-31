//
//  OtherSubscriber.m
//  DesignPattern
//
//  Created by chengshaohua on 2019/3/31.
//  Copyright © 2019 oyohotels.cn. All rights reserved.
//

#import "OtherSubscriber.h"

@implementation OtherSubscriber

- (void)valueChanged:(NSString *)valueName newValue:(NSString *)newValue {
    NSLog(@"OtherSubscriber输出: 值 %@ 已变为 %@", valueName, newValue);
}


@end
