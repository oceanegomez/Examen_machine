#include <stdio.h>
#include "../lib/liste-c.h"  

int main() {
    char* version = versionLC();
    printf("Version de la librairie liste-c : %s\n", version);
    return 0;
}