/// @description Insert description here
// You can write your code in this editor

if x > room_width + 50{
	x =-50;
}

if place_meeting(x,y,obj_deadBody){
	speed = .5
}else if !place_meeting(x,y,obj_deadBody){
	speed = 1;
}