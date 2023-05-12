#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

int main(){
    printf("Hello World!\n");
    char buffer[100];
    fflush(stdin);
    fgets(buffer, 100, stdin);
    printf("You said: %s\n", buffer);
}