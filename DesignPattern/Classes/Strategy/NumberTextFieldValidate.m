//
//  DesignPattern.h
//  DesignPattern
//
//  Created by chengshaohua on 2019/3/31.
//  Copyright © 2019 chshua@icloud.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NumberTextFieldValidate.h"

static NSString *NUMBER_TEXT_REGEX = @"^[0-9]*$";

@implementation NumberTextFieldValidate

- (BOOL)validateInputTextField:(UITextField *)textField error:(NSError **)error {
    if (textField.text.length == 0) {
        self.attributeInputStr = @"数值不能是空的";
        return nil;
    }
    
    // 验证数值
    NSUInteger numberOfMatches = [self validateInputTextField:textField regex:NUMBER_TEXT_REGEX error:error];
    
    // 进行判断,匹配不符合表示0的话, 就走下面的逻辑
    if (numberOfMatches == 0) {
        if(!error) return NO;
        
        self.attributeInputStr = @"不全是数字";
        NSDictionary *userInfo = [NSDictionary dictionaryWithObjects:@[self.attributeInputStr, @"输入有误,请重新输入"] forKeys:@[NSLocalizedDescriptionKey, NSLocalizedDescriptionKey]];
        *error = [NSError errorWithDomain:InputValidationErrorDomain code:1001 userInfo:userInfo];
    }
    
    return self.attributeInputStr == nil ? YES : NO;
}

@end
