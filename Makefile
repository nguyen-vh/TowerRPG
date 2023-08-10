CXX = g++
CXXFLAGS = -std=c++23 -Iinclude

SRC_DIR = src
BIN_DIR = bin
LIB_DIR = lib

SFML_LIBS = -lsfml-graphics-s -lsfml-window-s -lsfml-system-s -lopengl32 -lfreetype -lwinmm -lgdi32 -lsfml-main

SOURCES = $(wildcard $(SRC_DIR)/*.cpp)

OBJECTS = $(patsubst $(SRC_DIR)/%.cpp,%.o,$(SOURCES))

EXECUTABLE = $(BIN_DIR)/TowerRPG

debug: CXXFLAGS += -g
debug: $(EXECUTABLE) run clean-all

release: CXXFLAGS += -O3
release: $(EXECUTABLE) run clean

$(EXECUTABLE): $(OBJECTS)
	$(CXX) -o $(EXECUTABLE) $(OBJECTS) -L$(LIB_DIR) $(SFML_LIBS)

%.o: $(SRC_DIR)/%.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $< -DSFML_STATIC

run: $(EXECUTABLE)
	$(EXECUTABLE)

clean:
	rm -f $(OBJECTS)

clean-all:
	rm -f $(OBJECTS) $(EXECUTABLE)
	

	