CC = g++

all: efficiency_calc

efficiency_calc: main.o dts.o
	g++ -o efficiency_calc main.o dts.o

dts.o: dts.cpp
	g++ -c dts.cpp

main.o: main.cpp
	g++ -c main.cpp

clean:
	rm -rf *o efficiency_calc
