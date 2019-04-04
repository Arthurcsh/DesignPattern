//
//  StandardSubjectImplementation.m
//  DesignPattern
//
//  Created by chengshaohua on 2019/3/31.
//  Copyright © 2019 chshua@icloud.com. All rights reserved.
//

#import "StandardSubjectImplementation.h"

@implementation StandardSubjectImplementation

- (NSMutableSet *)observerCollection {
    if(!_observerCollection) {
        _observerCollection = NSMutableSet.set;
    }
    
    return _observerCollection;
}

- (void)addObserver:(id<StandardObserver>)observer {
    [self.observerCollection addObject:observer];
}

- (void)removeObserver:(id<StandardObserver>)observer {
    [self.observerCollection removeObject:observer];
}

- (void)notifyObjects {
    for (id<StandardObserver> observer in self.observerCollection) {
        [observer valueChanged:_valueName newValue:_newValue];
    }
}


- (void)obserChanged:(NSString *)valueName value:(NSString *)newValue {
    _valueName = valueName;
    _newValue = newValue;
    
    [self notifyObjects];
}


@end
