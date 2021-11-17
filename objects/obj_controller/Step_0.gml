/// @description Insert description here
// You can write your code in this editor
if global.playerDied = true{
	global.playerLives -=1;
	instance_destroy(obj_blogger);
	instance_create_layer(350,750,"Instances", obj_blogger);
	global.playerDied = false;
}

global.timeLeft = floor(global.time/60);

if global.playerLives = 0{
	game_end();
}

global.time-=1;

if global.time = 0{
	game_end();
}