/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_car1){
	global.playerDied = true;
}

if place_meeting(x,y,obj_car2){
	global.playerDied = true;
}

if place_meeting(x,y,obj_car3){
	global.playerDied = true;
}


if keyboard_check(vk_up)
{
	
	image_index=11

}

if keyboard_check(vk_down)
{
	
	image_index=0
	
}

if keyboard_check(vk_right)
{
	if image_index>8
	{
	image_index=4
	}
}


