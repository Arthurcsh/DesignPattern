//
//  DesignPattern.h
//  DesignPattern
//
//  Created by chengshaohua on 2019/3/31.
//  Copyright © 2019 chshua@icloud.com. All rights reserved.
//

#import "ModelAdapterManager.h"

@implementation ModelAdapterManager

- (void) addModelAdapter:(id<ContentViewAdapterProtocol>)adapter {
    NSLog(@"---  image  with  %@",adapter.contentStr);
}

@end
