all: comile link

compile:
	g++ -std=c++23 -Iinclude -c src/main.cpp -DSFML_STATIC

link:
	g++ -std=c++23 -o TowerRPG main.o -Llib -lsfml-graphics-s -lsfml-window-s -lsfml-system-s -lopengl32 -lfreetype -lwinmm -lgdi32 -lsfml-main

clean:
