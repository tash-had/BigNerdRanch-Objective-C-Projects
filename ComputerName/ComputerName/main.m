//
//  main.m
//  ComputerName
//
//  Created by Tash-had Saqif on 2017-06-04.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSHost *host = [NSHost currentHost]; // Reciever | Class Method
        NSString *name = [host localizedName]; // Reciever | Selector[:Argument]
        NSLog(@"\nThe computer name is: %@\n", name);
    }
    return 0;
}
