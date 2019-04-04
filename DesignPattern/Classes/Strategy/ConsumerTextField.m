//
//  DesignPattern.h
//  DesignPattern
//
//  Created by chengshaohua on 2019/3/31.
//  Copyright © 2019 chshua@icloud.com. All rights reserved.
//

#import "ConsumerTextField.h"

@implementation ConsumerTextField

- (BOOL)textFieldValidate {
    NSError *error;
    BOOL result = [self.inputValidate validateInputTextField:self error:&error];
    
    if (!result) {
        NSLog(@"---%@",self.inputValidate.attributeInputStr);
    }
    
    return result;
}


@end
