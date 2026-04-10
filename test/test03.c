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

    printf("\n");
    replaceLC(liste, -15, 1);
    printf("Remplace la valeur située à la position 1 par -15 : ");
    affiche(liste);
    printf("\n");

    insertLC(liste, 0, 2);
    insertLC(liste, 64, 1);
    printf("Insère les valeurs 0 et 64 sur les positions 2 et 1 : ");
    affiche(liste);
    printf("\n");

    removeLC( liste, 3);
    printf("Supprime la valeur située à la position 3 : ");
    affiche(liste);
    printf("\n");

    return 0;
}