#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

int main(){
    char buffer[100];
    strcpy(buffer, "Default message\n");
    while(1 == 1){
        printf("Response from BASH is: %s\n", buffer);
        fgets(buffer, sizeof(buffer), stdin);
    }
}