//
//  SomeSubscriber.m
//  DesignPattern
//
//  Created by chengshaohua on 2019/3/31.
//  Copyright © 2019 chshua@icloud.com. All rights reserved.
//

#import "SomeSubscriber.h"

@implementation SomeSubscriber

- (void)valueChanged:(NSString *)valueName newValue:(NSString *)newValue {
    NSLog(@"SomeSubscriber输出: 值 %@ 已变为 %@", valueName, newValue);
}


@end
