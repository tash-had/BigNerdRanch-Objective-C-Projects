//
//  BNROwnedAppliance.h
//  Appliances
//
//  Created by Tash-had Saqif on 2017-08-27.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import "BNRAppliance.h"

@interface BNROwnedAppliance : BNRAppliance

@property (readonly) NSSet *ownerNames;
// The designated initializer
- (instancetype)initWithProductName:(NSString *)pn
                     firstOwnerName:(NSString *)n;
- (void)addOwnerName:(NSString *)n;
- (void)removeOwnerName:(NSString *)n;

@end
