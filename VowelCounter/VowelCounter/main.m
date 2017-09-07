//
//  main.m
//  VowelCounter
//
//  Created by Tash-had Saqif on 2017-08-29.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+BNRVowelCounting.m"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *string = @"Hello World!";
        NSLog(@"%@ has %d vowels", string, [string bnr_vowelCount]);
    }
    return 0;
}
