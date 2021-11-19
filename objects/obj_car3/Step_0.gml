/// @description Insert description here
// You can write your code in this editor

//If the car is all the way off the screen...
if x>room_width+150{
	//send it back to the other side
	x=-50
}

//If the car is running over a dead body...
if place_meeting(x,y,obj_deadBody){
	//cut the speed in half
	speed = speedCarThree/2;
	//but if its not...
}else if !place_meeting(x,y,obj_deadBody){
	//make sure the speed is its original value
	speed = speedCarThree;
}