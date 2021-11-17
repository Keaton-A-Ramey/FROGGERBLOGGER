/// @description Insert description here
// You can write your code in this editor

obj_car1.speed = random_range(1,2);
obj_car2.speed = random_range(0.25, .5);
obj_car3.speed = random_range(4,5);

global.playerLives = 300;
global.time = 90*60;
global.timeLeft = global.time/60;
global.playerDied = false;
global.winCount = 0;

closeDoor = false;

draw_set_font(fnt_manaspace);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_red);