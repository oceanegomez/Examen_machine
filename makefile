LIB_DIR = lib

SRC = src
BUILD = build
TEST = test

help : 
	@echo '=== Cible disponible ==='
	@echo '  === make run01 /run02 / run03 '
	@echo '  === clean : supprime tous les fichiers .o'
	@echo "  === help : affichage de l'aide"


#alias pour simplifier l'accès à la cible
lib : $(LIB_DIR)/liste-c.o

test01: $(BUILD)/test01
test02: $(BUILD)/test02
test03: $(BUILD)/test03


# ===== TEST01 =====
$(BUILD)/test01.o : $(TEST)/test01.c 
	@echo '=== Compilation test01.o ==='
	gcc -I $(LIB_DIR) -c -Wall $(TEST)/test01.c -o $(BUILD)/test01.o

$(BUILD)/test01 : $(BUILD)/test01.o $(LIB_DIR)/liste-c.o 
	@echo '=== Compilation finale test01 ==='
	gcc -Wall $(BUILD)/test01.o $(LIB_DIR)/liste-c.o -o $(BUILD)/test01


# ===== TEST02 =====
$(BUILD)/test02.o : $(TEST)/test02.c 
	@echo '=== Compilation test02.o ==='
	gcc -I $(LIB_DIR) -c -Wall $(TEST)/test02.c -o $(BUILD)/test02.o

$(BUILD)/test02 : $(BUILD)/test02.o $(LIB_DIR)/liste-c.o 
	@echo '=== Compilation finale test02 ==='
	gcc -Wall $(BUILD)/test02.o $(LIB_DIR)/liste-c.o -o $(BUILD)/test02


# ===== TEST03 =====
$(BUILD)/test03.o : $(TEST)/test03.c 
	@echo '=== Compilation test03.o ==='
	gcc -I $(LIB_DIR) -c -Wall $(TEST)/test03.c -o $(BUILD)/test03.o

$(BUILD)/test03 : $(BUILD)/test03.o $(LIB_DIR)/liste-c.o 
	@echo '=== compilation finale test03 ==='
	gcc -Wall $(BUILD)/test03.o $(LIB_DIR)/liste-c.o -o $(BUILD)/test03


#nettoyage de projet
clean : 
	@echo '=== Suppression de tous les .o ==='
	rm -rf $(BUILD)/*.o $(LIB_DIR)/*.o $(BUILD)/test03


run01 : $(BUILD)/test01
	./$(BUILD)/test01

run02 : $(BUILD)/test02
	./$(BUILD)/test02

run03 : $(BUILD)/test03
	./$(BUILD)/test03
