//
//  DesignPattern.h
//  DesignPattern
//
//  Created by chengshaohua on 2019/3/31.
//  Copyright © 2019 www.oyohotels.cn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ContentViewAdapterProtocol.h"

@interface AbstractAdapter : NSObject <ContentViewAdapterProtocol>

@property (nonatomic, weak) id data;

- (instancetype) initWithData:(id)data;

@end
