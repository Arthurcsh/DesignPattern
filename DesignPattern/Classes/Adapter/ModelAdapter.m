//
//  DesignPattern.h
//  DesignPattern
//
//  Created by chengshaohua on 2019/3/31.
//  Copyright © 2019 chshua@icloud.com. All rights reserved.
//

#import "ModelAdapter.h"
#import "Model.h"

@implementation ModelAdapter

- (instancetype) initWithData:(id)data {
    if(self = [super init]) {
        self.data = data;
    }
    return self;
}

- (UIImage*)image {
    Model *data = self.data;
    return data.image;
}

- (NSString*)contentStr {
    Model *data = self.data;
    return data.contentStr;
}

@end
