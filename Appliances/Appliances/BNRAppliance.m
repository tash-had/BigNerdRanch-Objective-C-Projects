//
//  BNRAppliance.m
//  Appliances
//
//  Created by Tash-had Saqif on 2017-08-27.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import "BNRAppliance.h"

@implementation BNRAppliance

- (instancetype)initWithProductName:(NSString *)pn{
    // Call the NSObject's init method
//    self = [super init];
//    if (self){
////        _voltage = 120;
//        [self setVoltage:120];
//        //    _productName = [pn copy];
//        [self setProductName:pn];
//    }
    
    if (self = [super init]){
        _voltage = 120;
        _productName = [pn copy];
    }

    return self;
}

- (instancetype)init{
    // Allow init to go on w. default product name value:
//    return [self initWithProductName:@"Unknown"];
    
    // Do not allow init to go on without some given product name
//    [NSException raise:@"BNRApplianceInitException" format:@"Use initWithProductName, not init"];
    return [self initWithProductName:@"Unknown"];

}

- (NSString *)description{
    return [NSString stringWithFormat:@"<%@: %d volts>", self.productName, self.voltage];
}

- (void)setVoltage:(int)voltage{
    NSLog(@"Setting voltage to %d", voltage);
    _voltage = voltage;
}
@end
