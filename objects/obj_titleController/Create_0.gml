/// @description Insert description here
// You can write your code in this editor

//These variables are relevant in the game itself, but not exactly for the title. Win count is 
//for how many times the player has gotten to the train cars, rainbowpeople is an easter egg.
global.winCount = 0;
global.rainbowPeople = false;

//Setting up the fonts
draw_set_font(fnt_manaspace);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

//Giving the three cars their speeds
obj_car1.speed = 1.5;
obj_car2.speed = .375;
obj_car3.speed = 4.5;