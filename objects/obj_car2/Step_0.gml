/// @description Insert description here
// You can write your code in this editor
if x>room_width + 250{
	x=-150
}

if place_meeting(x,y,obj_deadBody){
	speed = speedCarTwo/2;
}else if !place_meeting(x,y,obj_deadBody){
	speed = speedCarTwo;
}