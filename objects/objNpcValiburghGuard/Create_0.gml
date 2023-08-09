/// @desc Inherit the parent event
event_inherited();

states = {
	left: sprSoldierLeft,
	right: sprSoldierRight,
	up: sprSoldierUp,
	down: sprSoldierDown
}

targetX_ = toRoom(toTile(x));
targetY_ = toRoom(toTile(y));

walk = false;

if(global.quest.allowedIntoCastle)
{
	instance_destroy();	
}