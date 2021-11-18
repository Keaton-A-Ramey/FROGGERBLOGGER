/// @description Insert description here
// You can write your code in this editor

if global.playerDied = true{
	global.playerLives -=1;
	instance_create_layer(obj_blogger.x, obj_blogger.y, "Scenery", obj_deadBody);
	instance_destroy(obj_blogger);
	instance_create_layer(350,750,"Instances", obj_blogger);
	global.playerDied = false;
}

global.timeLeft = floor(global.time/60);

if global.playerLives = 0{
	room_goto(GameOverRoom);
}

global.time-=1;

if global.time = 0{
	room_goto(GameOverRoom);
}

if global.gotBattery = true{
	batteryCoordFinder();
	global.score+=1000;
	instance_create_layer(batteryCoords[0], batteryCoords[1], "Instances", obj_battery);
	global.gotBattery = false;
}

if place_meeting(obj_blogger.x, obj_blogger.y, obj_traincar){
	closeDoor = true;
	var whichDoor = instance_nearest(obj_blogger.x, obj_blogger.y,obj_traincar);
	instance_destroy(obj_blogger);
	instance_create_layer(350,750,"Instances", obj_blogger);
}

if closeDoor = true{
	whichDoor.image_index = 0;
	global.winCount++;
	whichDoor.mask_index = spr_noCollision;
	whichDoor.keepDoorClosed = true;
	closeDoor = false;
}

show_debug_message(string(global.winCount));

if global.winCount = 4{
	global.score += global.time;
	global.score += global.playerLives*2500;
	room_goto(VictoryRoom);
}

//Easter egg
if global.rainbowPeople > 4{
	if makeRainbow = true{
	with(obj_croudman){
	image_blend = make_color_rgb(irandom_range(0,255), irandom_range(0,255), irandom_range(0,255));
}
with(obj_croudman2){
	image_blend = make_color_rgb(irandom_range(0,255), irandom_range(0,255), irandom_range(0,255));
}
with(obj_croudman2L){
	image_blend = make_color_rgb(irandom_range(0,255), irandom_range(0,255), irandom_range(0,255));
}
with(obj_croudmanL){
	image_blend = make_color_rgb(irandom_range(0,255), irandom_range(0,255), irandom_range(0,255));
}
makeRainbow = false;
}
}