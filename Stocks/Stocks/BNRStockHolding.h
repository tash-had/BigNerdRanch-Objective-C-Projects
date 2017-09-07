//
//  BNRStockHolding.h
//  Stocks
//
//  Created by Tash-had Saqif on 2017-06-20.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject
//{
//    float _purchaseSharePrice;
//    float _currentSharePrice;
//    int _numberOfShares;
//
//}

//- (void)setSharePrice:(float)s; // Accessor method
//- (float)getSharePrice; // Instance var
//- (void)setNumShares:(int)n; 
//- (int)getNumShares; // ^^
//- (void)setPurchasePrice:(float)p;
//- (float)getPurchasePrice;

@property (nonatomic) float sharePrice;
@property (nonatomic) int numShares;
@property (nonatomic) float purchasePrice;
@property (nonatomic) NSString *symbol;

- (float)costInDollars; // purchaseSharePrice * numberofShares
- (float)valueInDollars; // currentSharePrice * numberofShares
- (NSString *)generateRandomString:(int)len;
@end
