/// @description Insert description here
// You can write your code in this editor

//If it goes off screen, make it wrap around and cut
//the speed in half if its walking over a body

if x < -50{
	x = room_width + 50;	
}

if place_meeting(x,y,obj_deadBody){
	speed = 1/2
}else if !place_meeting(x,y,obj_deadBody){
	speed = 1;
}
