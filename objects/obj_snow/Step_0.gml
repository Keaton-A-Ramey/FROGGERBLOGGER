/// @description Insert description here
// You can write your code in this editor

//Lifespan goes down
lifespan--

//When life span runs out, destroy snow
if lifespan = 0{
	instance_destroy();
}