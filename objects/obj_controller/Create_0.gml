/// @description Insert description here
// You can write your code in this editor

//Keeps random values fresh
randomize();

//Establishing variables like time and lives left. Battery is a collectible that yields
//extra points. Rainbow people is for an easter egg. I define it here and on
//the main menu because the objects there check for it

global.playerLives = 5;
global.time = 120*60;
global.timeLeft = global.time/60;
global.playerDied = false;
global.winCount = 0;
global.gotBattery = false;
global.score = 0;
global.rainbowPeople = 0;

//Used for closing the door of the traincar the player touches and adding bonus points at the end
closeDoor = false;
addBonus = true;

//Establishing font variables
draw_set_font(fnt_manaspace);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_yellow);

//This is for easter egg
makeRainbow = true;