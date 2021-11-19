/// @description Insert description here
// You can write your code in this editor

//All of these check to see if the blogger has run into
//an obstacle and sets playerDied to true if they did
if place_meeting(x,y,obj_car1){
	global.playerDied = true;
}

if place_meeting(x,y,obj_car2){
	global.playerDied = true;
}

if place_meeting(x,y,obj_car3){
	global.playerDied = true;
}

if place_meeting(x,y,obj_croudman){
	global.playerDied = true;
}

if place_meeting(x,y,obj_croudmanL){
	global.playerDied = true;	
}

if place_meeting(x,y,obj_croudman2){
	global.playerDied = true;	
}

if place_meeting(x,y,obj_croudman2L){
	global.playerDied = true;
}