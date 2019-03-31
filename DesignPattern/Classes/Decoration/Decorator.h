//
//  DesignPattern.h
//  DesignPattern
//
//  Created by chengshaohua on 2019/3/31.
//  Copyright © 2019 www.oyohotels.cn. All rights reserved.
//

#import "AbstractCellPhone.h"

@interface Decorator : AbstractCellPhone {
    
@protected AbstractCellPhone *component;
    
}

- (void) setComponents:(AbstractCellPhone*)component;

@end
