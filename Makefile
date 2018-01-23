# Makefile for Wine Prgram!
# By: Ari Sherman
# Class: CS5201 HW #1
# Date: 1.23.18

default: all

all: driver

driver:   BrewMain.o  \
    	  	beer.o      \
		  		additives.o \
	g++ BrewMain.o beer.o additives.o -o driver

BrewMain.o: wine.h   \
            beer.h   \
	g++ -c BrewMain.cpp

additives.o:  additives.h  \
	g++ -c additives.cpp

beer.o: beer.h \
	g++ -c beer.cpp
