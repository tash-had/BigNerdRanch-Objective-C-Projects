//
//  main.m
//  InterestingNames
//
//  Created by Tash-had Saqif on 2017-06-10.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames" encoding:NSUTF8StringEncoding error:NULL];
        NSString *wordsString = [NSString stringWithContentsOfFile:@"/users/tash-had/Documents/lowercase_dict.txt" encoding:NSUTF8StringEncoding error:NULL];
        
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        NSArray *words = [wordsString componentsSeparatedByString:@"\n"];
        
        NSMutableArray *namesAndWords = [NSMutableArray array];
        
        for (NSString *name in names){
            if ([words containsObject:[name lowercaseString]]){
                NSLog(@"hey %@", name);
                [namesAndWords addObject:name];
            }
        }
        for (NSString *n in namesAndWords){
            NSLog(@"%@", n);
        }
    }
    return 0;
}
