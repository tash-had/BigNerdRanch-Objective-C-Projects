//
//  main.c
//  CountDown
//
//  Created by Tash-had Saqif on 2017-05-29.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    int start;
    printf("Where should I start counting? ");
    scanf("%d", &start);
    
    for (int i = start;i >= 0;i-=3){
        printf("%d\n", i);
        if (i % 5 == 0){
            printf("Found One!\n");
        }
    }
    return 0;
}
