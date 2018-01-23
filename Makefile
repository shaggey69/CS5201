#Makefile for BrewMain 5.0 for CS236 Fall 2000	

default: all

all: driver

driver:   BrewMain.o  \
          wine.o      \
    	  beer.o      \
		  additives.o \
		  grain.o     \
		  hops.o      \
		  yeast.o     \
	g++ BrewMain.o wine.o beer.o additives.o grain.o hops.o yeast.o  -o driver

BrewMain.o: wine.h   \
            beer.h   \
	g++ -c BrewMain.cpp  

wine.o: yeast.h      \
        additives.h  \
	g++ -c wine.hpp

