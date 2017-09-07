//
//  NSDate+BNRDateConvenience.h
//  DateMonger
//
//  Created by Tash-had Saqif on 2017-08-29.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (BNRDateConvenience)

+ (NSDate *)getDateAtMidnightYear:(int)year
                        month:(int)month
                          day:(int)day;

@end
