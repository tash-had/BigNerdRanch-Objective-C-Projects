//
//  main.m
//  VowelMovement
//
//  Created by Tash-had Saqif on 2017-08-26.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import <Foundation/Foundation.h>

/*typedef void (^ArrayEnumerationBlock)(id, NSUInteger, BOOL *);*/ // Init method 2

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *originalStrings = @[@"Sauerkraut", @"Raygun", @"Big Nerd Ranch", @"Mississipi"];
        NSMutableArray *devowelizedStrings = [NSMutableArray array];
        NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
        
        // Declare the block variable
//        void (^devowelizer)(id, NSUInteger, BOOL *); Init method 1
        
        /*ArrayEnumerationBlock devowelizer;*/ // Init method 2
        
        // Compose a block and assign it to the variable
        
        // Iterate over orig strings array w/ your block
        [originalStrings enumerateObjectsUsingBlock:^(id string, NSUInteger i, BOOL *stop){
            NSRange yRange = [string rangeOfString:@"y" options:NSCaseInsensitiveSearch];
            
            // Did I find a y?
            if (yRange.location != NSNotFound){
                *stop = YES; // Prevent further iteraations
                return; // Stop this iteration
            }
            
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            // Iterate over the array of vowels, replacing occurances of each with an empty string
            for (NSString *s in vowels){
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
            }
            [devowelizedStrings addObject:newString];
        }];
        
        NSLog(@"Original array: %@", originalStrings);
        NSLog(@"Devowelized strings: %@", devowelizedStrings);
    }
    return 0;
}
