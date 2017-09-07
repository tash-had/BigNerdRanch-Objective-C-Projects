//
//  NSDate+BNRDateConvenience.m
//  DateMonger
//
//  Created by Tash-had Saqif on 2017-08-29.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import "NSDate+BNRDateConvenience.h"

@implementation NSDate (BNRDateConvenience)

+ (NSDate *)getDateAtMidnightYear:(int)year month:(int)month day:(int)day{
    NSDateComponents *comps = [[NSDateComponents alloc] init];
    [comps setYear:year];
    [comps setMonth:month];
    [comps setDay:day];
    
    return [[NSCalendar currentCalendar] dateFromComponents:comps];
}
@end
