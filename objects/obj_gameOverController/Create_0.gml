/// @description Insert description here
// You can write your code in this editor

//Keep result fresh
randomize();

//Variables for drawing text
draw_set_font(fnt_manaspace);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_red);

//If the rainbowPeople easter egg was triggered before 
//losing, set the background of the room to a random
//sprite out of 4 possible ones
if global.rainbowPeople > 4{
	var lay_id = layer_get_id("Background");
	var back_id = layer_background_get_id(lay_id);
	backgroundsList = [spr_gameOverSecret1, spr_gameOverSecret2, spr_gameOverSecret3, spr_gameOverSecret4];
	whichBackground = irandom_range(0,3);
	layer_background_sprite(back_id, backgroundsList[whichBackground]);
}