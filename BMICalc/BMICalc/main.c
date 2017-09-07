//
//  main.c
//  BMICalc
//
//  Created by Tash-had Saqif on 2017-05-29.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#include <stdio.h>

//struct Person {
//    float heightInMeters;
//    int weightInKilos;
//};

typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person;
float bodyMassIndex(Person p){
    return p.weightInKilos / (p.heightInMeters * p.heightInMeters);
}
int main(int argc, const char * argv[]) {
    // insert code here...
//    struct Person mikey;
    Person mikey;
    mikey.heightInMeters = 1.7;
    mikey.weightInKilos = 96;
    
//    struct Person aaron;
    Person aaron;
    aaron.heightInMeters = 1.97;
    aaron.weightInKilos = 84;
//    printf("mikey is %.2f meters tall\n", mikey.heightInMeters);
//    printf("mikey weights %d kg\n", mikey.weightInKilos);
    float bmi;
    bmi = bodyMassIndex(mikey);
    printf("Mikey has a BMI of %.2f\n\n", bmi);
    return 0;
}

