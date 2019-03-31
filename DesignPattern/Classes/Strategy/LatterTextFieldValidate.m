//
//  DesignPattern.h
//  DesignPattern
//
//  Created by chengshaohua on 2019/3/31.
//  Copyright © 2019 www.oyohotels.cn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LatterTextFieldValidate.h"

static NSString *LATTER_TEXT_REGEX = @"^[a-zA-Z]*$";

@implementation LatterTextFieldValidate


/**
 验证逻辑可以自定义
 @param textField 输入框
 @return 验证结果
 */
- (BOOL)validateInputTextField:(UITextField *)textField error:(NSError **)error {
    if (textField.text.length == 0) {
        self.attributeInputStr = @"字母不能是空的";
        return nil;
    }
    
    // ^[a-zA-Z]*$ 从开头(^)到结尾($), 有效字符集([a-zA-Z])或者更多(*)个字符
    NSUInteger numberOfMatches = [self validateInputTextField:textField regex:LATTER_TEXT_REGEX error:error];
    
    // 进行判断,匹配不符合表示0的话, 就走下面的逻辑
    if (numberOfMatches == 0) {
        if(!error) return NO;
        
        self.attributeInputStr = @"不全是字母";
        NSDictionary *userInfo = [NSDictionary dictionaryWithObjects:@[self.attributeInputStr, @"输入有误,请重新输入"] forKeys:@[NSLocalizedDescriptionKey, NSLocalizedDescriptionKey]];
        *error = [NSError errorWithDomain:InputValidationErrorDomain code:1002 userInfo:userInfo];
    }
    
    return self.attributeInputStr == nil ? YES : NO;
}

@end
