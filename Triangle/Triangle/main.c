//
//  main.c
//  Triangle
//
//  Created by Tash-had Saqif on 2017-05-26.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#include <stdio.h>
#include <math.h>

float remainingAngle(float angle1, float angle2){
    return 180 - (angle1 + angle2);
}
int main(int argc, const char * argv[]) {
    // insert code here...
    
    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    printf("The third angle is %.2f\n\n", angleC);
    printf("sin(1) = %.3f\n", sin(1));
    return 0;
}
