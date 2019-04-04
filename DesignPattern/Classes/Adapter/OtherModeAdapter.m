//
//  DesignPattern.h
//  DesignPattern
//
//  Created by chengshaohua on 2019/3/31.
//  Copyright © 2019 chshua@icloud.com. All rights reserved.
//

#import "OtherModeAdapter.h"
#import "OtherModel.h"

@implementation OtherModeAdapter

- (instancetype) initWithData:(id)data {
    if(self = [super init]) {
        self.data = data;
    }
    return self;
}

- (UIImage*)image {
    OtherModel *otherModel = self.data;
    return otherModel.image;
}

- (NSString*)contentStr {
    OtherModel *otherModel = self.data;
    return otherModel.contentOther;
}

@end
