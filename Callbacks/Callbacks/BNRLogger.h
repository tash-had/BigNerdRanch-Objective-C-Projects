//
//  BNRLogger.h
//  Callbacks
//
//  Created by Tash-had Saqif on 2017-08-24.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRLogger : NSObject <NSURLSessionDelegate, NSURLSessionDataDelegate>

@property (nonatomic) NSDate *lastTime;
- (NSString *)lastTimeString;
- (void)updateLastTime:(NSTimer *)t;

@end
