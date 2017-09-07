//
//  BNRAsset.m
//  BMITime
//
//  Created by Tash-had Saqif on 2017-07-05.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import "BNRAsset.h"

@implementation BNRAsset

- (NSString *)description{
    if (self.holder){
        return [NSString stringWithFormat:@"Stock Holder: %@, Label: %@, Resale Value: %u", self.holder, _label, _resaleValue];
    }else{
        return [NSString stringWithFormat:@"Stock Holder: unassigned, Label: %@, Resale Value: %u", _label, _resaleValue];
    }
}

- (void)dealloc{
    NSLog(@"Deallocating %@", self);
}
@end
