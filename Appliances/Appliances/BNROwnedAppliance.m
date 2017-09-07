//
//  BNROwnedAppliance.m
//  Appliances
//
//  Created by Tash-had Saqif on 2017-08-27.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import "BNROwnedAppliance.h"

@interface BNROwnedAppliance (){
    NSMutableSet *_ownerNames;
}
@end
@implementation BNROwnedAppliance

- (instancetype)initWithProductName:(NSString *)pn
                     firstOwnerName:(NSString *)n{
    
    // Call the superclasse's initializer
    if (self = [super initWithProductName:pn]){
        // Create a set to hold owners names
        _ownerNames = [[NSMutableSet alloc] init];
        
        // Is the first owner name non-nil?
        if (n){
            [_ownerNames addObject:n];
        }
    }
    // Return a pointer to the new object
    return self;
}

- (void)addOwnerName:(NSString *)n{
    [_ownerNames addObject:n];
}

- (void)removeOwnerName:(NSString *)n{
    [_ownerNames removeObject:n];
}

- (NSSet *)ownerNames{
    return [_ownerNames copy];
}

- (instancetype)initWithProductName:(NSString *)pn  {
    return [self initWithProductName:pn firstOwnerName:nil];
}

@end
