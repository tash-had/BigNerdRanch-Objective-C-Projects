//
//  main.m
//  TimeAfterTime
//
//  Created by Tash-had Saqif on 2017-06-03.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSDate *now = [NSDate date];
        NSDate *now = [[NSDate alloc] init];
        NSLog(@"\n\nThis NSDate object lives at %p", now);
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since 1970", seconds);
        NSLog(@"The date is now %@", now);
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"The date after 100k seconds is: %@", later);
    
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSLog(@"My calendar type is: %@", [cal calendarIdentifier]);
        
        unsigned long day = [cal ordinalityOfUnit:NSCalendarUnitDay
                                           inUnit:NSCalendarUnitMonth
                                          forDate:now];
        NSLog(@"The day of the month is: %lu", day);
    }
    return 0;
}
