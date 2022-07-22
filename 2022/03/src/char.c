#include <stdio.h>
#include <string.h>
#include <stdlib.h>


int data = 12345;
 
int main() {
    char s[] = "abc"; // {'a', 'b', 'c', '\0'}
    char t[3] = "def";

    char *p = malloc(6*sizeof(char));

    strcpy(p, "strcpy");
    
    // *p = "def"; error
    printf("s: %s \n", s);
    printf("t: %s \n", t);
    printf("p: %s \n", p);

}
