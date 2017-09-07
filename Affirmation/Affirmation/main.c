//
//  main.c
//  Affirmation
//
//  Created by Tash-had Saqif on 2017-08-29.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[]) {
    
    int count = atoi(argv[2]);
    for (int j = 0;j < count; j++){
        printf("You are %s!\n", argv[j]);
    }
    return 0;
}
