/// @description Insert description here
// You can write your code in this editor

//If the room is the game room...
if room = GameRoom{
	
//If the wincount hasn't been reached, move the train until
//it has set into the station
if global.winCount < 4{
if (global.trainx<800)
{
	x = x+5;
	image_speed = 0;
}

//This is where the train is in game
if (global.trainx>=800)
{
	//if the keep door closed variable is true, make sure
	//the doors dont change from where they are
	if keepDoorClosed = false{
	image_speed = 1;
	}else if keepDoorClosed = true{
	image_speed = 0;	
	}
}

//If the door opens up fully, set the speed of the image to 0 so 
//it stays on that frame
if (image_index = 3)
{
	image_speed = 0;
}
}
}

//If the win count has been reached, get the train moving off the 
//screen and keep the image speed 0
if global.winCount=4{
	x = x+5;
	image_speed = 0;
}