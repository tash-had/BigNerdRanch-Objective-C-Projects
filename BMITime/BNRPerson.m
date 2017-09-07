//
//  BNRPerson.m
//  BMITime
//
//  Created by Tash-had Saqif on 2017-06-13.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson

//- (float)heightInMeters{
//    return _heightInMeters;
//}
//- (void)setHeightInMeters:(float)h{
//    _heightInMeters = h;
//}
//
//- (int)weightInKilos{
//    return _weightInKilos;
//}
//- (void)setWeightInKilos:(int)w { _weightInKilos = w; }

- (float)bodyMassIndex{
    float h = [self heightInMeters];
    return [self weightInKilos];
}

@end
