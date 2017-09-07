//
//  main.m
//  Appliances
//
//  Created by Tash-had Saqif on 2017-08-27.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRAppliance.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRAppliance *a = [[BNRAppliance alloc] init];
        BNRAppliance *b = [[BNRAppliance alloc] initWithProductName:@"Oven"];
       
        [a setProductName:@"Washing Machine"];
        [a setValue:@"Washing Machine" forKey:@"productName"];
        
        [a setVoltage:240];
        [a setValue:[NSNumber numberWithInteger:240] forKey:@"voltage"];
        
        NSLog(@"a is %@", a);
        
        NSLog(@"b is %@", b);
        
        NSLog(@"the product name is ... %@", [a valueForKey:@"productName"]);

    }
    return 0;
}
