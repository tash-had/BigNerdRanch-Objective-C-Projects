//
//  main.m
//  Stockz
//
//  Created by Tash-had Saqif on 2017-08-26.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *stocks = [[NSMutableArray alloc] init];
        NSMutableDictionary *stock;
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"AAPL" forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:200] forKey:@"shares"];
        [stocks addObject:stock];
        
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"GOOG" forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:160] forKey:@"shares"];
        [stocks addObject:stock];
        
        [stocks writeToFile:@"/tmp/stocks.-plist" atomically:YES];
        
        NSArray *stockList = [NSArray arrayWithContentsOfFile:@"/tmp/stocks.-plist"];
        
        for (NSDictionary *d in stockList){
            NSLog(@"I have %@ shares of %@ stocks", [d objectForKey:@"shares"], [d objectForKey:@"symbol"]);
        }
        
        // Excercise. “Write a tool that creates a property list that has all 8 types in it: array, dictionary, string, data, date, integer, float, and boolean.”
        
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        for (int i = 0;i < 10;i++){
            NSMutableArray *info = [[NSMutableArray alloc] init];
            
            NSString *employeeStr = [[NSProcessInfo processInfo] globallyUniqueString];
            NSDate *hireDate = [NSDate dateWithTimeIntervalSince1970:(36000+ (i*579000))];
            float salary = (i + 20.4)*0.99;
            BOOL employed = NO;
            if (i % 2 == 0){
                employed = YES;
            }
            NSNumber *age = [NSNumber numberWithInt:30+i];
            
            [info addObject:employeeStr];
            [info addObject:hireDate];
            [info addObject:[NSNumber numberWithFloat:salary]];
            [info addObject:[NSNumber numberWithBool:employed]];
            [info addObject:age];
            NSData *employeedata = [NSKeyedArchiver archivedDataWithRootObject:info];
            
            [info addObject:employeedata];
            [dict setObject:info forKey:employeeStr];

        }
        [dict writeToFile:@"/tmp/info2.-plist" atomically:YES];
        
    }
    return 0;
}
