0 = main

all: ../build/stdafx.pch compile clean

compile:
	g++ -std=c++23 -I../include -DSFML_STATIC -g -c -o ../build/$(0).o $(0).cpp -include ../include/stdafx.hpp 

../build/stdafx.pch: ../include/stdafx.hpp
	g++ -std=c++23 -I../include -DSFML_STATIC -g -c ../include/stdafx.hpp -o ../build/stdafx.pch

clean:
	rm -f ../build/*.o