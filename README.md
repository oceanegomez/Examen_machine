# EXAMEN MACHINE - UE DEVELOPPEMENT LOGICIEL
---
### Développement Logiciel enseigné par Denis Payet. 10/04/2026 - 11H28
---
### Réalisé par : Gomez Océane CPI2 : a.oceanegomez@gmail.com

--- 

## La librairie : ListeC

Une implémentation des listes chainées en C.

## Fork avril 2026

Nous allons réimplémenter la librairie liste-c. Pour plus d'informations, suivez [ce lien](info_dev.md).

#### Lien du dépôt git d'origine de la librairie liste-c : 
Vous trouverez le dépot git d'origine [ici](https://github.com/payetdenis/liste-c).

## API de la librairie liste-c

versionLC  : retourne une chaîne de caractères qui indique la version de la librairie.

createLC : créer une liste vide. 

sizeLC : retourne le nombre d’éléments dans la liste.

addLC : ajouter une valeur à la liste à la fin.

getLC : récupérer la valeur d’un élément à une position donnée dans la liste.

replaceLC : remplacer la valeur d’un élément à une position donnée par une nouvelle valeur.

insertLC : ajouter un élément à une position précise dans la liste. Les autres éléments sont décalés.

removeLC : supprimer un élément à une position donnée dans la liste.

deleteLC : supprimer toute la liste et de libérer la mémoire utilisée.