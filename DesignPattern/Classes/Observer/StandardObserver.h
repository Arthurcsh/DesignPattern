//
//  StandardObserver.h
//  DesignPattern
//
//  Created by chengshaohua on 2019/3/31.
//  Copyright © 2019 chshua@icloud.com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol StandardObserver <NSObject>

- (void)valueChanged:(NSString*)valueName newValue:(NSString*)newValue;

@end


@protocol StanardSubject <NSObject>

- (void)addObserver:(id<StandardObserver>)observer;
- (void)removeObserver:(id<StandardObserver>)observer;
- (void)notifyObjects;

@end


NS_ASSUME_NONNULL_END
