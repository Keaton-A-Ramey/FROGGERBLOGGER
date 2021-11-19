/// @description Insert description here
// You can write your code in this editor

//If the truck is all the way off the screen...
if x>room_width + 250{
	//Send it back to the other side
	x=-150
}

//If truck is running over a dead body...
if place_meeting(x,y,obj_deadBody){
	//cut the speed in half
	speed = speedCarTwo/2;
	//but if its not running over the corpse 
}else if !place_meeting(x,y,obj_deadBody){
	//make sure its the original value
	speed = speedCarTwo;
}