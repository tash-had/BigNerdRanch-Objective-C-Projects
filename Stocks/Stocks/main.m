//
//  main.m
//  Stocks
//
//  Created by Tash-had Saqif on 2017-06-20.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "BNRStockHolding.h" redundant bc below
#import "BNRForeignStockHolding.h"
#import "BNRPortfolio.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *BNRStockHoldingArr = [NSMutableArray array];
        
        BNRStockHolding *sh1 = [[BNRStockHolding alloc] init];
        BNRStockHolding *sh2 = [[BNRStockHolding alloc] init];
        BNRForeignStockHolding *fsh1 = [[BNRForeignStockHolding alloc] init];

       
        sh1.purchasePrice = 2.30;
        sh1.sharePrice = 4.50;
        sh1.numShares = 40;
        sh1.symbol = @"XYZ";
        
        sh2.purchasePrice = 12.19;
        sh2.sharePrice = 10.56;
        sh2.numShares = 90;
        sh2.symbol = @"ABC";
        
        fsh1.purchasePrice = 2.30;
        fsh1.sharePrice = 4.50;
        fsh1.numShares = 40;
        
        fsh1.conversionRate = 0.94;
        fsh1.symbol = @"LMN";
        
        BNRStockHoldingArr[0] = sh1;
        BNRStockHoldingArr[1] = sh2;
        BNRStockHoldingArr[2] = fsh1;
        
        // Add 10 more stocks to the array
        for (int i =0; i < 10; i++){
            BNRStockHolding *sh = [[BNRStockHolding alloc] init];
            sh.purchasePrice = i + 5;
            sh.sharePrice = i + (6.93*i);
            sh.numShares = i*10;
            NSString *lowercaseSymb = [sh generateRandomString:3];
            sh.symbol = [lowercaseSymb uppercaseString];
            
            [BNRStockHoldingArr addObject:sh];
            
        }
        
        BNRPortfolio *portfolio = [[BNRPortfolio alloc] init];
        for (int i = 0; i< [BNRStockHoldingArr count]; i++){
            [portfolio addStock:BNRStockHoldingArr[i]];
        }
        NSLog(@"Total Value in Portfolio: %f, Total Stocks: %lu, Portfolio: %@", portfolio.totalValue, (unsigned long)[portfolio.holdings count], portfolio.holdings);
        [portfolio removeStock:fsh1];
        NSLog(@"Total Value in Portfolio (removed foreign stock): %f, Total Stocks: %lu, Portfolio: %@", portfolio.totalValue, [portfolio.holdings count], portfolio.holdings);
        
        NSArray *topThree = portfolio.topThree;
        NSLog(@"Top Three: %@", topThree);
        
        NSArray *symbolSorted = portfolio.symbolSort;
        NSLog(@"Symbol Sorted Portfolio: %@", symbolSorted);
            
//
//        for (BNRStockHolding *sh in BNRStockHoldingArr){
//            float cost = [sh costInDollars];
//            float value = [sh valueInDollars];
//            NSLog(@"Cost ($): %f", cost);
//            NSLog(@"Value ($): %f", value);
//        }
        
        // Create an array of stockHolding objects
//        NSMutableArray *stockHoldings = [[NSMutableArray alloc] init];
//        
//        for (int i = 0;i<10;i++){
//            // Create an instance of the stock holding
//            
//            NSUInteger randomNum = random() % [stockHoldings count];
//            
//            if (i % 2 == 0){
//                BNRStockHolding *stock = [[BNRStockHolding alloc] init];
//                stock.numShares = i*10;
//                stock.purchasePrice = i*5;
//                stock.sharePrice = i * randomNum;
//                [stockHoldings addObject:stock];
//            }else{
//                BNRForeignStockHolding *stock = [[BNRForeignStockHolding alloc] init];
//                stock.numShares = i * randomNum;
//                stock.purchasePrice = i*7;
//                stock.sharePrice = i * 10;
//                stock.conversionRate = 0.94;
//                [stockHoldings addObject:stock];
//            }
//        }
//        for (int i =0;i< 10;i++){
//            BNRSto
//        }
    }
    
    
    return 0;
}
