/// @description Insert description here
// You can write your code in this editor

//If the blogger is going left, set the sprite to the 
//blogger facing to the left
sprite_index = spr_bloggerSidewaysL;

//When left is pressed, if x is greater than 0, move it left 50
if (x > 0)
{
	x = x- 50;
}
//if x is 0 (on the left edge), then wrap it around
else
{
	x = 750;
}

