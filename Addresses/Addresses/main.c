//
//  main.c
//  Addresses
//
//  Created by Tash-had Saqif on 2017-05-29.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    int i = 17;
    printf("i stores its value at %p\n", &i);
    printf("main starts at %p\n", main);
    
    int *addressOfI = &i;
    printf("%p\n", addressOfI);
    float myFloat = 3.14159;
    float *address = &myFloat;
    printf("myFloat is %zu bytes \n", sizeof(address));
    
    return 0;
}
