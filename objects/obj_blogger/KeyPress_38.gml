/// @description Insert description here
// You can write your code in this editor

//Set the sprite to the blogger facing upward
sprite_index = spr_bloggerForward;

//If y is greater than 100(below the last row before the train)
if (y > 100)
{
//Move it up 50
y-=50;
//But, if y is 100 or less...
}else if y<=100{
	//if the movement would put the player in collision 
	//with traincar, let them move up
	if place_meeting(x,y - 50, obj_traincar){
		y-=50
	}else{
	//if not though, don't let them. Can't go inside train
		y+=0;
	}
}
