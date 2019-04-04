//
//  DesignPattern.h
//  DesignPattern
//
//  Created by chengshaohua on 2019/3/31.
//  Copyright © 2019 chshua@icloud.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InputTextFieldValidate.h"

@implementation InputTextFieldValidate

- (BOOL)validateInputTextField:(UITextField *)textField error:(NSError **)error {
    if(error) error = nil;
    
    return NO;
}


- (NSUInteger)validateInputTextField:(UITextField *)textField regex:(NSString *)regex error:(NSError **)error {
    if(!regex) return -1;
    
    NSRegularExpression *regexExpression = [NSRegularExpression regularExpressionWithPattern:regex options:NSRegularExpressionAnchorsMatchLines error:error];
    
    NSUInteger numberOfMatches = [regexExpression numberOfMatchesInString:[textField text] options:NSMatchingAnchored range:NSMakeRange(0, [[textField text] length])];
    
    return numberOfMatches;
}


@end
