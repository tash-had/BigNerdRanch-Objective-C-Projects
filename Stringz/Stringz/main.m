//
//  main.m
//  Stringz
//
//  Created by Tash-had Saqif on 2017-08-23.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableString *str = [[NSMutableString alloc] init];
        
        for (int i = 0;i<10;i++){
            [str appendString:@"Aaron is cool! \n"];
        }
        
        // Declare a pointer to an NSError object but do not instantiate it
        // The NSError instance will only be created if there is, in fact, an error. We don't want to waste resources creating an error if there is no error. If there is, writeToFile:atmoically:encoding:error will be responsible for creating it. 
        NSError *error;
        
        // Pass the NSError pointer by the reference to the NSString method. Recall that "&" means youre passing a reference
        BOOL success = [str writeToFile:@"/too/darned/bad.txt" atomically:YES encoding:NSUTF8StringEncoding error:&error];
        
        // Test the returned BOOL, and query the NSError if the write failed
        
        if (success){
            NSLog(@"Done writing /tmp/cool.txt");
        }else{
            NSLog(@"writing to /tmp/cool.txt failed: %@", [error localizedDescription]);
        }
        
        // Reading file into string
        
        NSError *err;
        NSString *str2 = [[NSString alloc] initWithContentsOfFile:@"/etc/resolv.conf" encoding:NSASCIIStringEncoding error:&err];
        
        if (!str){
            NSLog(@"read failed: %@", [err localizedDescription]);
        }else{
            NSLog(@"resolv.conf looks like this: %@", str2);
        }
        
        
        
    }
    return 0;
}
