LIB_DIR = lib

SRC = src
BUILD = build
TEST = test

defaut : $(BUILD)/test01

#Exercice 10 : 
help : 
	@echo '=== Cible disponible ==='
	@echo '  === -test01 : génère le programme final (défaut)' 
	@echo '  === lib : compile la librairie liste-c'
	@echo '  === clean : supprime tous les fichiers .o'
	@echo "  === help : affichage de l'aide"
	@echo '  === init : Création des dossiers src et build ==='

#alias pour simplifier l'accès à la cible
lib : $(LIB_DIR)/liste-c.o


# compilation intermédiaire du test01
$(BUILD)/test01.o : $(TEST)/test01.c 
	@echo '=== Compilation de .o de test01 ==='
	gcc -I $(LIB_DIR) -c -Wall $(TEST)/test01.c -o $(BUILD)/test01.o


#génération de l'exécutable test01
$(BUILD)/test01 : $(BUILD)/test01.o $(LIB_DIR)/liste-c.o 
	@echo '=== compilation finale test01 ==='
	gcc -Wall $(BUILD)/test01.o $(LIB_DIR)/liste-c.o -o $(BUILD)/test01

#nettoyage de projet
clean : 
	@echo '=== Suppression de tous les .o ==='
	rm -rf $(BUILD)/*.o $(LIB_DIR)/*.o $(BUILD)/test01

init :
	@echo '=== Création des dossiers src et build ==='
	mkdir -p $(SRC) $(BUILD)

run : $(BUILD)/test01
	@$(BUILD)/test01

