LIB_DIR = lib

SRC = src
BUILD = build
TEST = test

defaut : $(BUILD)/test02

#Exercice 10 : 
help : 
	@echo '=== Cible disponible ==='
	@echo '  === -test02 : génère le programme final (défaut)' 
	@echo '  === lib : compile la librairie liste-c'
	@echo '  === clean : supprime tous les fichiers .o'
	@echo "  === help : affichage de l'aide"
	@echo '  === init : Création des dossiers src et build ==='

#alias pour simplifier l'accès à la cible
lib : $(LIB_DIR)/liste-c.o


# compilation intermédiaire du test02
$(BUILD)/test02.o : $(TEST)/test02.c 
	@echo '=== Compilation de .o de test02 ==='
	gcc -I $(LIB_DIR) -c -Wall $(TEST)/test02.c -o $(BUILD)/test02.o


#génération de l'exécutable test02
$(BUILD)/test02 : $(BUILD)/test02.o $(LIB_DIR)/liste-c.o 
	@echo '=== compilation finale test02 ==='
	gcc -Wall $(BUILD)/test02.o $(LIB_DIR)/liste-c.o -o $(BUILD)/test02

#nettoyage de projet
clean : 
	@echo '=== Suppression de tous les .o ==='
	rm -rf $(BUILD)/*.o $(LIB_DIR)/*.o $(BUILD)/test02

init :
	@echo '=== Création des dossiers src et build ==='
	mkdir -p $(SRC) $(BUILD)

run : $(BUILD)/test02
	@$(BUILD)/test02

