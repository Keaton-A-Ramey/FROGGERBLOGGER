/// @description Insert description here
// You can write your code in this editor

draw_text_ext_transformed(room_width*.2, room_height/2-5, "LIVES:" + string(global.playerLives), 10, 200, 1.75, 1.75, 0);
draw_text_ext_transformed(room_width*.5, room_height/2-5, "TIME LEFT:" + string(global.timeLeft), 10, 200, 1.75, 1.75, 0);
draw_text_ext_transformed(room_width*.8, room_height/2-5, "SCORE:" + string(global.score), 10, 200, 1.75, 1.75, 0);