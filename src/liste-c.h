#pragma once
#include <stdlib.h>

char* versionLC(void); // version de la librairie 

struct st_listeC;     // La liste elle-même
typedef struct st_listeC * ListeC;

ListeC createLC();		// Crée une liste			
int sizeLC(ListeC liste); // taille de la liste
void addLC(ListeC liste, int value); // ajoute un élément à la liste
int getLC(ListeC liste, int pos);	// récupère un élément à la position souhaitée

void replaceLC(ListeC liste, int value, int pos);	// remplace une élément par un autre choisi par la position souhaitée
void insertLC(ListeC liste, int value, int pos);	// insère un élément à une certaine position
void removeLC(ListeC liste, int pos);                   // supprime un élément situé à une position souhaitée

void deleteLC(ListeC liste); // Supprime toute la liste