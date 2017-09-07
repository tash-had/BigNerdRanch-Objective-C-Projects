//
//  BNRLogger.m
//  Callbacks
//
//  Created by Tash-had Saqif on 2017-08-24.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import "BNRLogger.h"

// I decided to add the mutable data object using
// a class extension here just because it's the modern
// thing to do.
// You should generally prefer properties to instance variables
// so that your code has the safety of using accessors rather
// than touching state directly,
// and if a property or instance variable doesn't need to be
// available to the rest of your application, you should hide
// it in a class extension.
@interface BNRLogger ()
@property (nonatomic) NSMutableData *downloadedData;
@end

@implementation BNRLogger

- (NSString *)lastTimeString{
    static NSDateFormatter *dateFormatter = nil;
    
    if (!dateFormatter){
        dateFormatter = [[NSDateFormatter alloc] init];
        
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"date formatter created");
    }
    
    return [dateFormatter stringFromDate:self.lastTime];
}

- (void)updateLastTime:(NSTimer *)t{
    NSDate *now = [NSDate date];
    // Accessor method will automatically tell observer about change
//    [self setLastTime:now];
    
    // If you set lastTime explicitly without acessors, you must tell observer about change explicitly
    [self willChangeValueForKey:@"lastTime"];
    _lastTime = now;
    [self didChangeValueForKey:@"lastTime"];
    NSLog(@"Just set time to %@", self.lastTimeString);
}

// Not much has changed here except the expected method signature.
// Also, I'm using property notation.
- (void)URLSession:(NSURLSession *)session
          dataTask:(NSURLSessionDataTask *)dataTask
    didReceiveData:(NSData *)data
{
    NSLog(@"received %lu bytes", data.length);
    
    // Create a mutable data if it does not already exist.
    if (!self.downloadedData) {
        self.downloadedData = [[NSMutableData alloc] init];
    }
    
    // Append the new data to our existing pile of data.
    [self.downloadedData appendData:data];
}

// Rather than having two methods for completion (one for success, one for failure),
// the session will call this method in either case, providing an NSError only if
// the task failed.
- (void)URLSession:(NSURLSession *)session
              task:(NSURLSessionTask *)task
didCompleteWithError:(NSError *)error
{
    // Normally, as in the Writing Files chapter, we would check the data
    // instead of the error to know if there was a problem,
    // but in this case you can't know if the data you've collected
    // is complete without checking for an error.
    if(!error) {
        // We have all the data!
        NSLog(@"Finished! Total size is %lu bytes.", self.downloadedData.length);
        NSString *str = [[NSString alloc] initWithData:self.downloadedData
                                              encoding:NSUTF8StringEncoding];
        NSLog(@"Here you go!\n%@",str);
        NSLog(@"Printed %lu characters",str.length);
        
        
    } else {
        NSLog(@"Encountered an error: \(error)");
        self.downloadedData = nil;
    }
}

- (void)zoneChange:(NSNotification *)note{
    NSLog(@"The time zone has changed!");
}

+ (NSSet *)keyPathsForValuesAffectingLastTimeString{
    return [NSSet setWithObject:@"lastTime"];
}
@end
