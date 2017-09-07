//
//  AppDelegate.h
//  iTahDoodle
//
//  Created by Tash-had Saqif on 2017-08-26.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic) UITableView *taskTable;
@property (nonatomic) UITextField *taskField;
@property (nonatomic) UIButton *insertButton;
@property (nonatomic) NSMutableArray *tasks;

- (void)addTask:(id)sender;
@end

