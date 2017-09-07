//
//  BNREmployee.m
//  BMITime
//
//  Created by Tash-had Saqif on 2017-08-21.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

@interface BNREmployee ()
{
    NSMutableSet *_assets;
}
@property (nonatomic) unsigned int officeAlarmCode;
@end

@implementation BNREmployee

    // Accessors for assets properties
- (void)setAssets:(NSArray *)a{
    _assets = [a mutableCopy];
}
- (NSArray *)assets{
    return [_assets copy];
}

- (void)addAsset:(BNRAsset *)a{
    // Is assets nil?
    if (!_assets){
        _assets = [[NSMutableSet alloc] init];
    }
    [_assets addObject:a];
    a.holder = self;
}

- (void)removeAsset:(BNRAsset *)a{
    if (_assets){
        for (BNRAsset *ast in _assets){
            if (ast.label == a.label && ast.resaleValue == a.resaleValue){
                [_assets removeObject:ast];
            }
        }
    }
}
- (unsigned int)valueOfAssets{
    // Sum up resale value of the assets
    unsigned int sum = 0;
    for (BNRAsset *a in _assets){
        sum += a.resaleValue;
    }
    return sum;
}
- (double)yearsOfEmployment{
    if (self.hireDate){
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs /31557600.0;
    }
    else{
        return 0;
    }
}
- (float)bodyMassIndex{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}


- (NSString *)description{
    return [NSString stringWithFormat:@"Employee %d with $%u in assets", self.employeeID, self.valueOfAssets];
}

- (void)dealloc{
    NSLog(@"deallocating %@", self);
}
@end
