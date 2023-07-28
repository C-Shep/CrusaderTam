/// @desc 

// Inherit the parent event
event_inherited();

//Destroy at final location
var targetX = toRoom(toTile(376));
var targetY = toRoom(toTile(120));

//Walk to house at start of game
if(walkToHouse)
{
	moveToPoint(targetX,targetY);	
	objTam.playerControl = false;	
}

//destroy when at house
if(x == targetX && y == targetY)
{
	objTam.playerControl = true;
	instance_destroy();
}

//change to repeat dialogue after giving amulet
if(global.quest.sofiaGiven)
{
	dialog = global.dialog.sofiaChat;
}
