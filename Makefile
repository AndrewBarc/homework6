.PHONY: all archive build clean
CC=g++
all: build doc
	
game: main.o othello.o game.o piece.h colors.h
	$(CC) main.o othello.o game.o -o game

main.o: main.cc
	$(CC) -c main.cc

othello.o: othello.cc othello.h
	$(CC) -c othello.cc

game.o: game.cc game.h
	$(CC) -c game.cc

clean:
	rm *.o game
	rm -r html latex

build: game

archive:
	tar cvzf game.tgz ~/HW5/Sample_student_project/

doc: Doxyfile
	doxygen Doxyfile
