/// @description Insert description here
// You can write your code in this editor

//If the player hasn't won yet, see if the train has been
//brought fully into the room and then make it stop when it
//has
if global.winCount < 4{
global.trainx = x;

if (global.trainx<800)
{
	x = x+5;
}
//When the player has won, get the train moving again
}else if global.winCount = 4{
	x = x+5;
}