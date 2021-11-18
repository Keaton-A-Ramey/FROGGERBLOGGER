/// @description Insert description here
// You can write your code in this editor

sprite_index = spr_bloggerForward;

if (y > 100)
{
y-=50;
}else if y<=100{
	if place_meeting(x,y - 50, obj_traincar){
		y-=50
	}else{
		y+=0;
	}
}
