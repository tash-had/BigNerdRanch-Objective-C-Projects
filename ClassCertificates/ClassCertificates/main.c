//
//  main.c
//  ClassCertificates
//
//  Created by Tash-had Saqif on 2017-05-26.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#include <stdio.h>
#include <unistd.h>

void congratulateStudent(char *student, char *course, int numDays){
    printf("%s has done as much %s Programming as I could fit into %d days!\n", student, course, numDays);
}

int main(int argc, const char * argv[]) {
    // insert code here...
    congratulateStudent("Mark", "Coacoa", 5);
    sleep(5);
    congratulateStudent("Bo", "Objective-C", 2);
    sleep(2);
    congratulateStudent("Randy", "Objective-C", 3);
    
    return 0;
}
