//
//  Document.h
//  TahDoodle
//
//  Created by Tash-had Saqif on 2017-08-26.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Document : NSDocument

@property (nonatomic) NSMutableArray *tasks;
@property (nonatomic) IBOutlet NSTableView *taskTable;

- (IBAction)addTask:(id)sender;

@end

