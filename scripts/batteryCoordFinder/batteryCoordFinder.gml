// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function batteryCoordFinder(){
	randomize();
	
	batteryCoords = [];
	var whichZone = irandom_range(1,2);
	
	if whichZone = 1{
		yCoord = irandom_range(2,6)*50;
		xCoord = irandom_range(4,12)*50;
	}
	if whichZone = 2{
		yCoord = irandom_range(9,13)*50;
		xCoord = irandom_range(4,12)*50;
	}
	
	array_push(batteryCoords, xCoord);
	array_push(batteryCoords, yCoord);
	
	return(batteryCoords);
}