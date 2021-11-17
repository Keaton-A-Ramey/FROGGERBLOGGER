/// @description Insert description here
// You can write your code in this editor

if room = GameRoom{
if (global.trainx<800)
{
	x = x+5;
	image_speed = 0;
}

if (global.trainx>=800)
{
	if keepDoorClosed = false{
	image_speed = 1;
	}else if keepDoorClosed = true{
	image_speed = 0;	
	}
}

if (image_index = 3)
{
	image_speed = 0;
}
}
