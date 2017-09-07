//
//  main.c
//  Degrees
//
//  Created by Tash-had Saqif on 2017-05-26.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

static float lastTemperature;

float celsiusToFarenheight(float celsius){
    lastTemperature = celsius;
    float farenheight = celsius * 1.8 + 32;
    printf("%f Celsius is %f Farenheight", celsius, farenheight);
    return farenheight;
    
}
int main(int argc, const char * argv[]) {
    float degrees = 0;
    printf("Water freezes at %f degrees, and %f farenheight", degrees, celsiusToFarenheight(degrees));
    printf("The last temperature converted was %f", lastTemperature);
    return EXIT_SUCCESS;
}
