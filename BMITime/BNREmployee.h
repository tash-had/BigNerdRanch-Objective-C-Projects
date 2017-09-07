//
//  BNREmployee.h
//  BMITime
//
//  Created by Tash-had Saqif on 2017-08-21.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h" 
@class BNRAsset;

@interface BNREmployee : BNRPerson


@property (nonatomic) unsigned int employeeID;
@property (nonatomic) NSDate *hireDate;

@property (nonatomic, copy) NSSet *assets;

- (double)yearsOfEmployment;

- (void)addAsset:(BNRAsset *)a;
- (void)removeAsset:(BNRAsset *)a;

- (unsigned int)valueOfAssets;

@end
