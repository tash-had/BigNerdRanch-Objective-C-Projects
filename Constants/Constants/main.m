//
//  main.m
//  Constants
//
//  Created by Tash-had Saqif on 2017-08-22.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"\u03c0 is %f", M_PI);
        NSLog(@"%d is larger", MAX(5, 10));
        
        NSLocale *here = [NSLocale currentLocale];
        NSString *currency = [here objectForKey:NSLocaleCurrencyCode];
        NSLog(@"Money is in %@", currency);
    }
    return 0;
}
