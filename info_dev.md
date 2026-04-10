# EXAMEN MACHINE - UE DEVELOPPEMENT LOGICIEL
---
### Développement Logiciel enseigné par Denis Payet. 10/04/2026 - 11H28
---
### Réalisé par : Gomez Océane CPI2 : a.oceanegomez@gmail.com

--- 
# Information aux développeurs : 


## Introduction

#### Réimplémentation de la librairie liste-c

Nous allons devoir dans l'exercice 10, réimplémenter la librairie liste-c. En effet, nous avons vu grâce aux options -g -fsanitize=address que notre programme test02 à un problème de mémoire consommée qui n'est pas libérée à la fin du programme. 

---

En tant que futurs ingénieurs, nous devons donc prendre l'entière responsabilité de réimplémenter la librairie fournie par notre merveilleux professeur Denis Payet. 


###### Lien du dépôt git distant 
[dépôt git](https://github.com/oceanegomez/Examen_machine.git)

---

## La directive #pragma once

Qu'est-ce que le #pragma once ? 
C'est une directive qui permets aux langages comme C et C++ d'inclure une seule fois le fichier qui contient le #pragma once dans une seule compilation. 

Cette directive a plusieurs utilités notamment moins de code à écrire, on évite des conflits et on améliore la vitesse de compilation. 