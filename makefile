LIB_DIR = lib

SRC = src
BUILD = build
TEST = test

defaut : $(BUILD)/test03

#Exercice 10 : 
help : 
	@echo '=== Cible disponible ==='
	@echo '  === -test03 : génère le programme final (défaut)' 
	@echo '  === lib : compile la librairie liste-c'
	@echo '  === clean : supprime tous les fichiers .o'
	@echo "  === help : affichage de l'aide"
	@echo '  === init : Création des dossiers src et build ==='

#alias pour simplifier l'accès à la cible
lib : $(LIB_DIR)/liste-c.o


# compilation intermédiaire du test03
$(BUILD)/test03.o : $(TEST)/test03.c 
	@echo '=== Compilation de .o de test03 ==='
	gcc -I $(LIB_DIR) -c -Wall $(TEST)/test03.c -o $(BUILD)/test03.o


#génération de l'exécutable test03
$(BUILD)/test03 : $(BUILD)/test03.o $(LIB_DIR)/liste-c.o 
	@echo '=== compilation finale test03 ==='
	gcc -Wall $(BUILD)/test03.o $(LIB_DIR)/liste-c.o -o $(BUILD)/test03

#nettoyage de projet
clean : 
	@echo '=== Suppression de tous les .o ==='
	rm -rf $(BUILD)/*.o $(LIB_DIR)/*.o $(BUILD)/test03

init :
	@echo '=== Création des dossiers src et build ==='
	mkdir -p $(SRC) $(BUILD)

run : $(BUILD)/test03
	@$(BUILD)/test03

