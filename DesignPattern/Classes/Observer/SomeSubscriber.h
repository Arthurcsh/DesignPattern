//
//  SomeSubscriber.h
//  DesignPattern
//
//  Created by chengshaohua on 2019/3/31.
//  Copyright © 2019 oyohotels.cn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StandardObserver.h"

NS_ASSUME_NONNULL_BEGIN

@interface SomeSubscriber : NSObject <StandardObserver>

@end

NS_ASSUME_NONNULL_END
