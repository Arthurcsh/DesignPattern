//
//  DesignPattern.h
//  DesignPattern
//
//  Created by chengshaohua on 2019/3/31.
//  Copyright © 2019 chshua@icloud.com. All rights reserved.
//

#import "AbstractCellPhone.h"

@implementation AbstractCellPhone

- (NSString*) callNumber {
    return @"phone call someBody";
}

- (NSString*) sendMessage {
    return @"phone send a message to someBody";
}

@end
