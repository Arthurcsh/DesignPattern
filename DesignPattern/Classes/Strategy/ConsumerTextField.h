//
//  DesignPattern.h
//  DesignPattern
//
//  Created by chengshaohua on 2019/3/31.
//  Copyright © 2019 www.oyohotels.cn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InputTextFieldValidate.h"

@interface ConsumerTextField : UITextField

// 抽象的策略
@property (nonatomic, strong) InputTextFieldValidate *inputValidate;

// 验证是否符合要求
- (BOOL)textFieldValidate;


@end
