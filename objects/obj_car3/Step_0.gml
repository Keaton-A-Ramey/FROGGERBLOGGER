/// @description Insert description here
// You can write your code in this editor
if x>room_width+150{
	x=-50
}

if place_meeting(x,y,obj_deadBody){
	speed = speedCarThree/2;
}else if !place_meeting(x,y,obj_deadBody){
	speed = speedCarThree;
}