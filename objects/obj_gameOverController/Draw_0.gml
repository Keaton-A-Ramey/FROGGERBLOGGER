/// @description Insert description here
// You can write your code in this editor

//Says game over, score, and prompts for main menu
draw_text_ext_transformed(room_width/2, room_height*0.77, "GAME OVER", 10, 1000, 4,4, 0);
draw_text_ext_transformed(room_width/2, room_height*0.85, "SCORE:" + string(global.score), 10, 1000, 1.8, 1.8, 0);
draw_text_ext_transformed(room_width/2, room_height*0.9, "Press ENTER to return to main menu", 10, 1000, 1.8, 1.8, 0);