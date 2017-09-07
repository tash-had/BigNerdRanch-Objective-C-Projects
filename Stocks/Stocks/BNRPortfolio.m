//
//  BNRPortfolio.m
//  Stocks
//
//  Created by Tash-had Saqif on 2017-08-21.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import "BNRPortfolio.h"
#import "BNRStockHolding.h" 

@interface BNRPortfolio ()
{
    NSMutableArray *_holdings;
}
@end
@implementation BNRPortfolio

- (void)setHoldings:(NSArray *)a{
    _holdings = [a mutableCopy];
}
- (void)addStock:(BNRStockHolding *)stock{
    // Add stock 'stock' to _holdings
    if (!_holdings){
        _holdings = [[NSMutableArray alloc] init];
    }
    [_holdings addObject:stock];
}
- (void)removeStock:(BNRStockHolding *)a{
    // Remove a stock (remove the stock that has the same symbol as 'a'
    NSMutableArray *objsToRemove = [[NSMutableArray alloc] init];
    for (BNRStockHolding *stock in _holdings){
        if (stock.symbol == a.symbol){
            [objsToRemove addObject:stock];
        }
    }
    [_holdings removeObjectsInArray:objsToRemove];
}
- (NSArray *)topThree{
    // Return array of top three stock holdings based on valueInDollars
    NSArray *topThreeArr;
    NSMutableArray *holdingsCpy = [_holdings mutableCopy];
    NSSortDescriptor *stockValDesc = [NSSortDescriptor sortDescriptorWithKey:@"valueInDollars" ascending:NO];
    [holdingsCpy sortUsingDescriptors:@[stockValDesc]];
    
    NSRange firstThree;
    firstThree.location = 0;
    firstThree.length = 3;
    topThreeArr = [holdingsCpy subarrayWithRange:firstThree];
    return topThreeArr;
}

- (NSArray *)symbolSort{
    // Return array of holdings sorted in alphabetical order
    NSMutableArray *holdingsCpy = [_holdings mutableCopy];
    NSSortDescriptor *symbolDesc = [NSSortDescriptor sortDescriptorWithKey:@"symbol" ascending:YES];
    [holdingsCpy sortUsingDescriptors:@[symbolDesc]];
    return holdingsCpy;
}
- (float)totalValue{
    float sum = 0;
    for (BNRStockHolding *stock in _holdings){
        sum += stock.valueInDollars;
    }
    return sum;
}

@end
