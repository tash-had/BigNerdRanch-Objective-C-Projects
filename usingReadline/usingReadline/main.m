//
//  main.m
//  usingReadline
//
//  Created by Tash-had Saqif on 2017-06-10.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char nameInput;
        scanf("%s", &nameInput);
        NSString *name = [NSString stringWithUTF8String:&nameInput];
        
        NSLog(@"Hello, %@", name);
    }
    return 0;
}
