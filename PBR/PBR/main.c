//
//  main.c
//  PBR
//
//  Created by Tash-had Saqif on 2017-05-29.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#include <stdio.h>
#include <math.h>

void metersToFeetToInches(double meters, unsigned int *ftPtr, double *inPtr){
    // Function assumes meters is non-negative
    
    // Covert the number of meters into a floating-point number of feet
    double rawFeet = meters * 3.281;
    
    
    double integerPart;
    double fractionalFoot = modf(rawFeet, &integerPart);
    *ftPtr = integerPart;
    
//    // How many complete feet as an unsigned int?
//    unsigned int feet = (unsigned int)floor(rawFeet);
//    
//    // Store the number of feet at the supplied address
//    printf("Storing %u to the address %p\n", feet, ftPtr);
//    *ftPtr = feet;
//    
//    // Calculate inches
//    double fractionalFoot = rawFeet - feet;
    double inches = fractionalFoot * 12.0;
    
    // Store the number of inches at the supplied address
    printf("Storing %.2f to the address %p\n", inches, inPtr);
    *inPtr = inches;
}
int main(int argc, const char * argv[]) {
    // insert code here...
    double pi = 3.14;
    double integerPart;
    double fractionPart;
    fractionPart = modf(pi, &integerPart);
    printf("integerPart = %.0f, fractionPart = %.2f\n", integerPart, fractionPart);
    
    double meters = 3.0;
    unsigned int feet;
    double inches;
    metersToFeetToInches(meters, &feet, &inches);
    printf("%.1f meters is equal to %d feet and %.1f inches.\n", meters, feet, inches);
    return 0;
}
