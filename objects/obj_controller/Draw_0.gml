/// @description Insert description here
// You can write your code in this editor

draw_text_ext_transformed(room_width*.25, room_height/2-5, "LIVES:" + string(global.playerLives), 10, 200, 2, 2, 0);
draw_text_ext_transformed(room_width*.75, room_height/2-5, "TIME LEFT:" + string(global.timeLeft), 10, 200, 2, 2, 0);