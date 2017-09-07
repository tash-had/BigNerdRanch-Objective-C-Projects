//
//  BNRForeignStockHolding.m
//  Stocks
//
//  Created by Tash-had Saqif on 2017-08-21.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

// Since we created purchaseSharePrice / numberofShares with the manual getter/setter method way,
// we had to initialize and set _purchase SharePrice in the header file. But for _conversionRate,
// we created it as a property, so we get _conversionRate give to us without declaring the variable in the header.


- (float)costInDollars{
    return (self.purchasePrice * _conversionRate) * self.numShares;
}

- (float)valueInDollars{
    return (self.sharePrice * _conversionRate) * self.numShares;
}
@end
