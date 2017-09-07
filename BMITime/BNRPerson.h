//
//  BNRPerson.h
//  BMITime
//
//  Created by Tash-had Saqif on 2017-06-13.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject

// BNRPerson has Two properties
@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;

//{
//    // BNRPerson has two instance variables
//    float _heightInMeters;
//    float _weightInKilos;
//}
//// BNRPerson has methods to read and set its instance variables
//- (float)heightInMeters;
//- (void)setHeightInMeters:(float)h;
//- (int)weightInKilos;
//- (void)setWeightInKilos:(int)w;
//


// BNRPerson has a method that calculates body mass index
- (float)bodyMassIndex;
@end
