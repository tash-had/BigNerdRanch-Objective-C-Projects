//
//  main.m
//  SessionFun
//
//  Created by Michael Ward on 3/7/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRLogger.h"
#import "BNRObserver.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        BNRLogger *logger = [[BNRLogger alloc] init];
//        [[NSNotificationCenter defaultCenter] addObserver:logger selector:@selector(zoneChange:) name:NSSystemTimeZoneDidChangeNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserverForName: NSSystemTimeZoneDidChangeNotification object:nil queue:nil usingBlock:^(NSNotification *notification){
            NSLog(@"The time zone has changed!");
        }];

        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:logger selector:@selector(updateLastTime:) userInfo:nil repeats:YES];

        __unused BNRObserver *observer = [[BNRObserver alloc] init];
        // I want to know the new value and the old value whenever lastTime is changed.
        [logger addObserver:observer forKeyPath:@"lastTimeString" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
//        [logger addObserver:observer forKeyPath:@"lastTime" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];

        
        
        NSURL *url = [NSURL URLWithString: @"https://mw-dropshare.s3.amazonaws.com/note-IOVdIAW29P-SBonoiKj3G.html"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        
        // Start by creating a session configuration object.
        // The session configuration has properties like allowsCellularAccess and HTTPAdditionalHeaders
        NSURLSessionConfiguration *config = [NSURLSessionConfiguration defaultSessionConfiguration];
        
        // Then create  a session object. In a truly object-oriented program,
        // this would be a property of some object you create, rather than just
        // a local variable. Any book on iOS development (including ours!)
        // will show a more proper example of using an NSURLSession.
        NSURLSession *session = [NSURLSession sessionWithConfiguration:config delegate:logger delegateQueue:nil];
        
        // The last object you create is a task- this is analagous to the NSURLConnection.
        // The difference is that rather than each individual connection having a separate
        // delegate and properties, all of the tasks are owned by the Session object, which has
        // a single delegate to handle the callbacks for all inflight tasks.
        NSURLSessionTask *task = [session dataTaskWithRequest:request];
        // You tell the task to start doing work by sending it -resume
        // and then the tasks will delegate work back to the Session object as needed.
        [task resume];
        
        
        // Don't forget that this last bit is a hack;
        // You'll never use it in a production application.
        // You see it here only to force a command-line application (that would normally quit
        // when main() returns) to keep running instead.
        [[NSRunLoop currentRunLoop] run];
        
    }
    return 0;
}
