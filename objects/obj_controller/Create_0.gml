/// @description Insert description here
// You can write your code in this editor

global.playerLives = 5;
global.time = 120*60;
global.timeLeft = global.time/60;
global.playerDied = false;
global.winCount = 0;
global.gotBattery = false;
global.score = 0;
global.rainbowPeople = 0;

closeDoor = false;
addBonus = true;

draw_set_font(fnt_manaspace);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_red);

makeRainbow = true;