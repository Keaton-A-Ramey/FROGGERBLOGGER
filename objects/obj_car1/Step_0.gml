/// @description Insert description here
// You can write your code in this editor

//If the car is all the way off the screen, send it to the other side
if x>room_width + 100{
	x=-100
}

//If the car is running over the corpse...
if place_meeting(x,y,obj_deadBody){
	//cut the speed in half
	speed = speedCarOne/2
	//but if its not in contact with a corpse
}else if !place_meeting(x,y,obj_deadBody){
	//make sure the speed is original value
	speed = speedCarOne;
}