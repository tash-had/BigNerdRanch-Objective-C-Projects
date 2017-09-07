//
//  BNRObserver.m
//  Callbacks
//
//  Created by Tash-had Saqif on 2017-08-28.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import "BNRObserver.h"

@implementation BNRObserver

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    NSString *oldValue = [change objectForKey:NSKeyValueChangeNewKey]; // say it like "NSKeyValueChange: Old Key" or "NSKeyValueChange: New Key"
    NSString *newValue = [change objectForKey:NSKeyValueChangeOldKey];
    NSLog(@"Observed: %@ of %@ was changed from %@ to %@", keyPath, object, oldValue, newValue); 
}
@end
