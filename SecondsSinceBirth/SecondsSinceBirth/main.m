//
//  main.m
//  SecondsSinceBirth
//
//  Created by Tash-had Saqif on 2017-06-04.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSDate *date = [NSDate date]; // Date class + has current date
        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1998];
        [comps setMonth:1];
        [comps setDay:15];
        [comps setHour:00];
        [comps setMinute:05];
        
        NSCalendar *gCal = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        
        NSDate *birthday = [gCal dateFromComponents:comps];
        
        
        unsigned long secondsSinceBirth = [date timeIntervalSinceDate:birthday];
        NSLog(@"You have been alive for %lu seconds", secondsSinceBirth);
    }
    return 0;
}
