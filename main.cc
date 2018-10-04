// Brock Ferrell
// CS2401
// November 23, 2015
// Project7

#include "game.h"
#include "othello.h"
using namespace main_savitch_14;

/**
* Main function where Othello object is created and
* restart and play function are called.
*/
int main()
{
	Othello theGame;
	theGame.restart();
	theGame.play();
}
