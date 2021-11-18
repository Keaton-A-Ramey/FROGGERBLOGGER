/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_blogger){
	mask_index = spr_noCollision;
	global.gotBattery = true;
	speed = 8;
	direction = 90;
	
}

if (y <= -100){
	instance_destroy();
}