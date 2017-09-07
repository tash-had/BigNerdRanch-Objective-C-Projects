//
//  main.c
//  BeerSong
//
//  Created by Tash-had Saqif on 2017-05-26.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#include <stdio.h>

void singTheSong(int numBottles){
    if (numBottles == 0)
        printf("There are simple no more bottles of beer on the wall \n");
    else{
        printf("%d bottles of beer on the wall, %d bottles of beer.\n", numBottles, numBottles);
        int oneFewer = numBottles - 1;
        printf("Take one down, pass it around, %d bottles of beer on the wall \n", oneFewer);
        singTheSong(oneFewer);
        printf("Put a bottle in the recycling, %d bottles in the bin \n", numBottles);
    }
    
}
int main(int argc, const char * argv[]) {
    // insert code here...
    singTheSong(99);
    return 0;
}
