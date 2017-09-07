//
//  main.m
//  Groceries
//
//  Created by Tash-had Saqif on 2017-06-10.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        // insert code here...
        NSMutableArray *groceries = [NSMutableArray array];
        NSString *item1 = @"Eggs";
        NSString *item2 = @"Bread";
        NSString *item3 = @"Tomatoes";
        [groceries addObject: item1];
        [groceries addObject:item2];
        [groceries addObject:item3];
        
        NSLog(@"My grocery list is: \n");
        for (NSString *item in groceries){
            NSLog(@"%@", item);
        }
        
    }
    return 0;
}
