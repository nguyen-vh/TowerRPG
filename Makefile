CXX = g++
CXXFLAGS = -std=c++23 -Iinclude

SRC_DIR = src
BIN_DIR = bin
LIB_DIR = lib

SFML_LIBS = -lsfml-graphics-s -lsfml-window-s -lsfml-system-s -lopengl32 -lfreetype -lwinmm -lgdi32 -lsfml-main

SOURCES = $(wildcard $(SRC_DIR)/*.cpp)

OBJECTS = $(patsubst $(SRC_DIR)/%.cpp,%.o,$(SOURCES))

EXECUTABLE = $(BIN_DIR)/TowerRPG

all: debug clean run clean-all

release: CXXFLAGS += -O3
release: $(EXECUTABLE) run clean

debug: CXXFLAGS += -g
debug: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CXX) -o $(EXECUTABLE) $(OBJECTS) -L$(LIB_DIR) $(SFML_LIBS)

%.o: $(SRC_DIR)/%.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $< -DSFML_STATIC

clean:
	rm -f $(OBJECTS)

run: $(EXECUTABLE)
	$(EXECUTABLE)

clean-all:
	rm -f $(OBJECTS) $(EXECUTABLE)


	