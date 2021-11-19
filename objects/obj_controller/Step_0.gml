/// @description Insert description here
// You can write your code in this editor

//Needed so we can check when the whole train has left the station when player wins
var leftMostCar = instance_nearest(0,0,obj_traincar);

//When player dies, take away a life, play the sound, create the dead body,
// destroy the player and put him back at the start
if global.playerDied = true{
	global.playerLives -=1;
	audio_play_sound(snd_deathSound, 10, false);
	instance_create_layer(obj_blogger.x, obj_blogger.y, "Scenery", obj_deadBody);
	instance_destroy(obj_blogger);
	instance_create_layer(350,750,"Instances", obj_blogger);
	global.playerDied = false;
}

//This is the variable used for the time display
global.timeLeft = floor(global.time/60);

//If the player runs out of lives, they lose
if global.playerLives = 0{
	room_goto(GameOverRoom);
}

//Time always going downwards
global.time-=1;

//If time runs out, player loses
if global.time = 0{
	room_goto(GameOverRoom);
}

//when the player gets a battery, play the sound, add 1000 to score, find coords
//for the next battery, create the next battery, and change gotBattery back to false
if global.gotBattery = true{
	audio_play_sound(snd_gotBattery, 10, false);
	global.score+=1000;
	batteryCoordFinder();
	instance_create_layer(batteryCoords[0], batteryCoords[1], "Battery", obj_battery);
	global.gotBattery = false;
}

//if the player runs into a traincar, trigger the closing of the door, figure out which of the
//traincars the player touched, play the sound, destroy the player, add 1 to the win count, 
//if win count is less than 4, put the player back at the start, if the player has 4 or more, then
//put the player off screen because they have won. Then the train goes off screen and the player
//goes to the victory room, but thats in a different bit of code. Lastly, add 2000 to the score. 
if place_meeting(obj_blogger.x, obj_blogger.y, obj_traincar){
	closeDoor = true;
	var whichDoor = instance_nearest(obj_blogger.x, obj_blogger.y,obj_traincar);
	audio_play_sound(snd_traincarSound, 10, false);
	instance_destroy(obj_blogger);
	global.winCount++;
	if global.winCount < 4{
		instance_create_layer(350,750,"Instances", obj_blogger);
	}else if global.winCount >= 4{
		instance_create_layer(-350,-750,"Instances", obj_blogger);
	}
	global.score+=2000
}

//This closes the door of the car that was touched, changes the collision mask so it can't be
//collided with again, changes a value in the car object so the image stays the same, and then
//makes sure closeDoor doesn't trigger again by making it false. 
if closeDoor = true{
	whichDoor.image_index = 0;
	whichDoor.mask_index = spr_noCollision;
	whichDoor.keepDoorClosed = true;
	closeDoor = false;
}

//If the player has a win count of 4, then they have gotten bloggers to every car. It'll add
// the bonus using time and lives left over and then turn off add bonus so it doesn't add it
// every step. Then, it'll keep checking if the last car is off screen and then bring the 
// player to the victory room if it is. Once the player gets the 4 cars closed, the cars
//themselves will see that and then start moving right. 
if global.winCount = 4{
	if addBonus = true{
	global.score += global.time*5;
	global.score += global.playerLives*1500;
	addBonus = false
	}
	if leftMostCar.x > room_width{
		room_goto(VictoryRoom);
	}
}

//Easter egg. This triggers if the player wraps around the screen to the right 5 times. 
//It makes every crow(u?)dman a random color of the rainbow. I use the makeRainbow variable to
// make sure its not doing it every step. It also stops all the audio and plays a song Greyton 
//made that we were going to use before we decided we'd use a different one. We didn't want
//it to go to waste or be forgotten so its here.
if global.rainbowPeople > 4{
	if makeRainbow = true{
	with(obj_croudman){
	image_blend = make_color_rgb(irandom_range(0,255), irandom_range(0,255), irandom_range(0,255));
}
with(obj_croudman2){
	image_blend = make_color_rgb(irandom_range(0,255), irandom_range(0,255), irandom_range(0,255));
}
with(obj_croudman2L){
	image_blend = make_color_rgb(irandom_range(0,255), irandom_range(0,255), irandom_range(0,255));
}
with(obj_croudmanL){
	image_blend = make_color_rgb(irandom_range(0,255), irandom_range(0,255), irandom_range(0,255));
}
	audio_stop_all();
	audio_play_sound(Blogger_Song, 10, true);
	makeRainbow = false;
}
}