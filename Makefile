CXXFLAGS = -std=c++23 -Iinclude -DSFML_STATIC

SFML_LIBS = -lsfml-graphics-s -lsfml-window-s -lsfml-system-s -lopengl32 -lfreetype -lwinmm -lgdi32 -lsfml-main
# sfml-main.lib = hide Terminal Window (Windows)

SOURCES = $(wildcard src/*.cpp)

OBJECTS = $(patsubst src/%.cpp,%.o,$(SOURCES))

EXECUTABLE = bin/TowerRPG

debug: CXXFLAGS += -g
debug: $(EXECUTABLE) run clean-all

release: CXXFLAGS += -O3
release: $(EXECUTABLE) run clean

build/stdafx.pch: include/stdafx.hpp
	g++ $(CXXFLAGS) -c $< -o $@

$(EXECUTABLE): $(OBJECTS)
	g++ -o $(EXECUTABLE) $(OBJECTS) -Llib $(SFML_LIBS)

%.o: src/%.cpp build/stdafx.pch
	g++ $(CXXFLAGS) -c -o $@ $< -include include/stdafx.hpp

run: $(EXECUTABLE)
	$(EXECUTABLE)

clean:
	rm -f $(OBJECTS)

clean-all:
	rm -f $(OBJECTS) $(EXECUTABLE)