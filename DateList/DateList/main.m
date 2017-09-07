//
//  main.m
//  DateList
//
//  Created by Tash-had Saqif on 2017-06-10.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0*60.0*60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0*60.0*60.0];
        
//        NSArray *dateList = @[now, tomorrow, yesterday];
        NSMutableArray *dateList = [NSMutableArray array];
        [dateList addObject:now];
        [dateList addObject:tomorrow];
        [dateList insertObject:yesterday atIndex:0];
        
        [dateList removeObjectAtIndex:0];
        
        NSLog(@"The first date is %@", dateList[0]);
        NSLog(@"The third date is %@", dateList[2]);
        NSLog(@"There are %lu items in the array", [dateList count]);
        
        // Iterate over the array
//        NSUInteger dateCount = [dateList count];
        for (NSDate *d in dateList){
            NSLog(@"Here is a date: %@", d);
        }
    }
    return 0;
}
