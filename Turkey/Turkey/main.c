//
//  main.c
//  Turkey
//
//  Created by Tash-had Saqif on 2017-05-26.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
   
    // Declare the variable called 'weight' of type float
    
    float weight;
    
    // Put a number in that variable
    weight = 14.2;
    
    // Log it to the user
    printf("The turkey weights %f.\n", weight);
    
    // Declare another variable of type float
    float cookingTime;
    
    // Calculate the cooking time and store it in the variable
    // IN this case, '*' means 'multiplied by'
    cookingTime = 15.0 + 15.0 * weight;
    
    // Log that to the user
    printf("Cook it for %f minutes. \n", cookingTime);
    
    // End this function and indicate success
    return 0;
    
    
    // Calculate the cooking time
    
}
