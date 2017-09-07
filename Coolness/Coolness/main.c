//
//  main.c
//  Coolness
//
//  Created by Tash-had Saqif on 2017-05-29.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    
    for (int i = 0;i < 12;i++){
        if (i % 3 == 0){
            continue; // Skip to the next loop iteration (ignore rest of the code)
        }
        else if (i == 10){
            break;
        }
        printf("i: %d\n", i);
    }
    return 0;
}
