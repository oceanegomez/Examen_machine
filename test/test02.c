#include <stdio.h>
#include "../lib/liste-c.h"  


void affiche(ListeC liste) {
    int n = sizeLC(liste);
    printf("[");
    for (int i = 0; i < n; i++) {
        printf("%d ", getLC(liste, i));
    }
    printf("]");
    printf("\n");
}

int main() {
    ListeC liste = createLC();
    addLC(liste, 32);
    addLC(liste, 24);
    addLC(liste, 5);
    addLC(liste, 7);

    affiche(liste);
    return 0;
}