/// @description Insert description here
// You can write your code in this editor

if x>room_width + 100{
	x=-100
}

if place_meeting(x,y,obj_deadBody){
	speed = speedCarOne/2
}else if !place_meeting(x,y,obj_deadBody){
	speed = speedCarOne;
}