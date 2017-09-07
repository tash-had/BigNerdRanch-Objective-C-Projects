//
//  main.c
//  secondsSince1970
//
//  Created by Tash-had Saqif on 2017-06-03.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#include <stdio.h>
#include <time.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    
    long secondsIntoFuture = 4000000;
    long secondsSince1970 = time(NULL) + secondsIntoFuture;
    struct tm future;
    localtime_r(&secondsSince1970, &future);
    printf("The date in 4 million seconds will be %d-%d-%d\n", future.tm_mon + 1, future.tm_mday, 1900+future.tm_year);
    
    return 0;
}
