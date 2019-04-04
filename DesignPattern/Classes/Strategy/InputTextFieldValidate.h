//
//  DesignPattern.h
//  DesignPattern
//
//  Created by chengshaohua on 2019/3/31.
//  Copyright © 2019 chshua@icloud.com. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString * const InputValidationErrorDomain = @"InputValidationErrorDomain";

@interface InputTextFieldValidate : NSObject

@property (nonatomic, copy) NSString *attributeInputStr;


// 策略输入 YES 表示测试通过.No 表示测试不通过
- (BOOL)validateInputTextField:(UITextField *)textField error:(NSError **)error;

- (NSUInteger)validateInputTextField:(UITextField *)textField regex:(NSString *)regex error:(NSError **)error;

@end
