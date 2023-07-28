/// @desc 

// Inherit the parent event
event_inherited();

//Destroy at final location
var targetX = toRoom(toTile(376));
var targetY = toRoom(toTile(120));

if(global.quest.sofiaTalked)
{
}

if(walkToHouse)
{
	moveToPoint(targetX,targetY);	
	objTam.playerControl = false;	
}

if(x == targetX && y == targetY)
{
	objTam.playerControl = true;
	instance_destroy();
}

if(global.quest.sofiaGiven)
{
	dialog = global.dialog.sofiaChat;
}
