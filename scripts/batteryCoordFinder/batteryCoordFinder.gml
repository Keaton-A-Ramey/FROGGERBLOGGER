// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function batteryCoordFinder(){
	//Randomizes outcome
	randomize();
	
	//Establishes array.
	batteryCoords = [];
	//Top half of the road or the bottom half?
	var whichZone = irandom_range(1,2);
	
	//If its the top half, which x and y in the top part? Because the player moves around in
	//a 16x16 grid of 50x50 squares, thats why its using 2,6 times 50.
	if whichZone = 1{
		yCoord = irandom_range(2,6)*50;
		xCoord = irandom_range(4,12)*50;
	}
	//If its the bottom half, which x and y in the bottom part?
	if whichZone = 2{
		yCoord = irandom_range(9,13)*50;
		xCoord = irandom_range(4,12)*50;
	}
	
	//Push the x and y coord we got to an array to use
	array_push(batteryCoords, xCoord);
	array_push(batteryCoords, yCoord);
	
	//Then lets return it to use it
	return(batteryCoords);
}