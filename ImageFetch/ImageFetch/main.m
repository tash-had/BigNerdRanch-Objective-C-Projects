//
//  main.m
//  ImageFetch
//
//  Created by Tash-had Saqif on 2017-08-23.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello");
//        NSURL *url = [NSURL URLWithString: @"http://www.google.com/images/logos/ps_logo2.png"];
//        NSError *error;
//        NSURLSession *session = [NSURLSession sharedSession];
//        [[session dataTaskWithURL:url
//                completionHandler:^(NSData *data,
//                                    NSURLResponse *response,
//                                    NSError *error) {
//                    if (error != nil){
//                        NSLog(@"Fetch failed %@", [error localizedDescription]);
//                        return;
//                    }else{
//                        NSLog(@"The file is %lu bytes", (unsigned long)[data length]);
//                        BOOL written = [data writeToFile:@"/tmp/google.png" options:0 error:&error];
//                        
//                        if (!written){
//                            NSLog(@"write failed: %@", [error localizedDescription]);
//                            return;
//                        }
//                    }
//                    NSLog(@"Success!");
//                    
//                }] resume];
//        
        
        //1
        NSURL *url = [NSURL URLWithString:
                      @"http://www.google.com/images/logos/ps_logo2.png"];
        
        // 2
        NSURLSessionDownloadTask *downloadPhotoTask = [[NSURLSession sharedSession]
                                                       downloadTaskWithURL:url completionHandler:^(NSURL *location, NSURLResponse *response, NSError *error) {
                                                           // 3
                                                           _downloadedImage = [UIImage imageWithData:
                                                                               [NSData dataWithContentsOfURL:location]];
                                                           
                                                           //5
                                                           dispatch_async(dispatch_get_main_queue(), ^{
                                                               [_book3 setBackgroundImage: _downloadedImage forState:UIControlStateNormal];
                                                               [_scroller addSubview:_book3];
                                                           });
                                                       }];
        
        // 4    
        [downloadPhotoTask resume];
    }
    return 0;
}
