//
//  main.m
//  TimesTwo
//
//  Created by Tash-had Saqif on 2017-06-04.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSDate *currentTime = nil;
        currentTime = [NSDate date];
        NSLog(@"currentTime's current address on the heap is %p", currentTime);
        

        sleep(2);
        NSDate *startTime = currentTime;
        currentTime = [NSDate date];
        NSLog(@"currentTime's new address on the heap is:  %p", currentTime);
        NSLog(@"The address of the original object was %p", startTime);
        
    }
    return 0;
}
