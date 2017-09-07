//
//  BNRPortfolio.h
//  Stocks
//
//  Created by Tash-had Saqif on 2017-08-21.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNRStockHolding;

@interface BNRPortfolio : NSObject

@property (nonatomic, copy) NSArray *holdings;
@property (nonatomic) float totalValue;

- (void)addStock:(BNRStockHolding *)a;
- (void)removeStock:(BNRStockHolding *)a;

- (NSArray *)topThree;
- (NSArray *)symbolSort;

@end
