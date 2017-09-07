//
//  main.m
//  DateMonger
//
//  Created by Tash-had Saqif on 2017-08-29.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDAte+BNRDateConvenience.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSDate *bdayAtMidnight = [NSDate getDateAtMidnightYear:1998 month:01 day:15];
        
        NSLog(@"My birthday is: %@",bdayAtMidnight);

    }
    return 0;
}
