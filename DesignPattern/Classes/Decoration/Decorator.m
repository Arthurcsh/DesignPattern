//
//  DesignPattern.h
//  DesignPattern
//
//  Created by chengshaohua on 2019/3/31.
//  Copyright © 2019 chshua@icloud.com. All rights reserved.
//

#import "Decorator.h"

@implementation Decorator

- (void) setComponents:(AbstractCellPhone *)_component {
    component = _component;
}

- (NSString*) callNumber {
    return component.callNumber;
}

- (NSString*) sendMessage {
    return component.sendMessage;
}

@end
