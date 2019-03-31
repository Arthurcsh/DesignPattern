//
//  DesignPattern.h
//  DesignPattern
//
//  Created by chengshaohua on 2019/3/31.
//  Copyright © 2019 www.oyohotels.cn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AbstractAdapter.h"

@implementation AbstractAdapter

- (instancetype) initWithData:(id)data {
    if(self = [super init]) {
        self.data = data;
    }
    return self;
}

- (UIImage*)image {
    return nil;
}

- (NSString*)contentStr {
    return nil;
}

@end
