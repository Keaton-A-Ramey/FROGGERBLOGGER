/// @description Insert description here
// You can write your code in this editor

draw_text_ext_transformed(room_width/2, room_height*0.4, "GAME OVER", 10, 1000, 4,4, 0);
draw_text_ext_transformed(room_width/2, room_height*0.5, "SCORE:" + string(global.score), 10, 1000, 1.8, 1.8, 0);
draw_text_ext_transformed(room_width/2, room_height*0.6, "Press ENTER to return to main menu", 10, 1000, 1.8, 1.8, 0);