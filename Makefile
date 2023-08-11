NAME = TowerRPG

CXXFLAGS = -std=c++23 -Iinclude -DSFML_STATIC

SFML_LIBS = -lsfml-graphics-s -lsfml-window-s -lsfml-system-s -lopengl32 -lfreetype -lwinmm -lgdi32 -lsfml-main

SOURCES = $(wildcard src/*.cpp)

OBJECTS = $(patsubst src/%.cpp, build/%.o, $(SOURCES))

debug: CXXFLAGS += -g
debug: bin/$(NAME) run clean-all

release: CXXFLAGS += -O3
release: bin/$(NAME) run clean

time-debug: CXXFLAGS += -g
time-debug: bin/$(NAME) clean-all

time-release: CXXFLAGS += -O3
time-release: bin/$(NAME) clean

build/stdafx.pch: include/stdafx.hpp
	g++ $(CXXFLAGS) -c $< -o $@

bin/$(NAME): $(OBJECTS)
	g++ -o bin/$(NAME) $(OBJECTS) -Llib $(SFML_LIBS)

build/%.o: src/%.cpp build/stdafx.pch
	g++ $(CXXFLAGS) -c -o $@ $< -include include/stdafx.hpp

run: bin/$(NAME)
	bin/$(NAME)

clean:
	rm -f $(OBJECTS)

clean-all:
	rm -f $(OBJECTS) bin/$(NAME)
