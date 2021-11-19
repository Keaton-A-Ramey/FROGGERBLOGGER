/// @description Insert description here
// You can write your code in this editor

//Set the sprite to blogger facing right
sprite_index = spr_bloggerSidewaysR;

//If x is less than 750 (right-most square)
if (x < 750)
{
	//let them move right
	x = x + 50
}
else
{
	//if they are on right most square, add 1 to rainbowpeople
	global.rainbowPeople++
	//Then send player to other side
	x = 0;
}
