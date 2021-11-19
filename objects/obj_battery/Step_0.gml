/// @description Insert description here
// You can write your code in this editor

//If the battery comes into contact with the blogger...
if place_meeting(x,y,obj_blogger){
	//Make it so the player cant collide again...
	mask_index = spr_noCollision;
	//Set gotBattery to true...
	global.gotBattery = true;
	//Give the battery speed...
	speed = 8;
	//and send it up!
	direction = 90;
	
}

//when the battery goes completely off screen...
if (y <= -100){
	//destroy it
	instance_destroy();
}