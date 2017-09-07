//
//  main.m
//  BMITime
//
//  Created by Tash-had Saqif on 2017-06-13.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import <Foundation/Foundation.h>

//#import "BNRPerson.h"
#import "BNREmployee.h"
#import "BNRAsset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        
//        // Create an instance variable of BNREmployee
//        BNREmployee *mikey = [[BNREmployee alloc] init];
////        [mikey setWeightInKilos:96];
////        [mikey setHeightInMeters:1.8];
//        mikey.weightInKilos = 96;
//        mikey.heightInMeters = 1.8;
//        mikey.employeeID = 12;
//        
//        NSString *str =@"8/02/2010 9:15 PM";
//        NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
//        [formatter setDateFormat:@"MM/dd/yyyy HH:mm a"];
//        
//        mikey.hireDate = [formatter dateFromString:str];
//        NSLog(@"Employee %u hired on %@", mikey.employeeID, mikey.hireDate);
//        
//        // Log the instance variables using the getters
//        float height = mikey.heightInMeters;//[mikey heightInMeters];
//        int weight = mikey.weightInKilos; //[mikey weightInKilos];
//        NSLog(@"Mikey is %.2f meters tall and %d kg", height, weight);
//        
//        // Log some values using custom methods
//        float bmi = [mikey bodyMassIndex];
//        double years = mikey.yearsOfEmployment;
//        
//        NSLog(@"Mikey has a BMI of %.2f and has worked with us for %f years", bmi, years);
//        NSLog(@"%@ was hired on %@", mikey, mikey.hireDate);
//
        
        
        // Create an array of BNREmployee objects
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *executives = [[NSMutableDictionary alloc] init];
        
        
        for (int i = 0; i < 10; i++){
            // Create an instance of BNREmployee
            BNREmployee *employee = [[BNREmployee alloc] init];
            
            employee.weightInKilos = 90 + i;
            employee. heightInMeters = 1.8 - i/10.0;
            employee.employeeID = i;
            [employees addObject:employee];
            
            if (i == 0){
                [executives setObject:employee forKey:@"CEO"];
            }
            else if (i == 1){
                [executives setObject:employee forKey:@"CTO"];
            }
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        for (int i = 0;i < 10;i++){
            //Create an asset
            BNRAsset *asset = [[BNRAsset alloc] init];
            
            // Give it an interesting label
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i*17;
            
            // Get random number between 0 and 9 incl.
            NSUInteger randomIndex = random() % [employees count];
            
            // Find that employee
            BNREmployee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            // Assign the asset to the employee
            [randomEmployee addAsset:asset];
            [allAssets addObject:asset];
            
            NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
            NSSortDescriptor *eid = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
            [employees sortUsingDescriptors:@[voa, eid]];
            
            if (i == 5){
                NSLog(@"Current val for emp 5 %u", randomEmployee.valueOfAssets);
                BNRAsset *a = [[BNRAsset alloc] init];
                a.label = [NSString stringWithFormat:@"Laptop %d", i];
                a.resaleValue = 350 + i*17;
                [randomEmployee removeAsset:a];
                NSLog(@"Updated val for emp 5 %u", randomEmployee.valueOfAssets);

            }
        }
        
        
        NSLog(@"Employees: %@", employees);
        NSLog(@"Giving up ownership of one employee");
        [employees removeObjectAtIndex:5];
        NSLog(@"allAssets: %@", allAssets);
        
        // Print out exec dictionary
        NSLog(@"executives: %@", executives);
        
        // Print out CEO's info
        NSLog(@"CEO: %@", executives[@"CEO"]);
        NSLog(@"Employees: %@", employees);
        executives = nil; // deallocate (since I own the exec object, it won't deallocate automatically)
        
        
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"holder.valueOfAssets > 70"];
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
        NSLog(@"toBeReclaimed: %@", toBeReclaimed);
        toBeReclaimed = nil;
        
        NSLog(@"Giving up ownership of arrays");
        
        allAssets = nil;
        employees = nil; 
    }
//    sleep(100);
    return 0;
}
