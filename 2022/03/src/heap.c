#include <stdio.h>
#include <stdlib.h>

int main() {
    int *p;
    p = (int*) malloc(sizeof(int));
    *p = 10;
    printf("p is %d", *p);
    free(p);

    int arrayi9[12];

    for (int i = 0; i < 12; i++) {
	arrayi9[i] = i;
    }

    const char* str = "Hello, World";

    printf("%s", str);
}

