/// @desc Inherit the parent event
event_inherited();

states = {
	left: sprSoldierLeft,
	right: sprSoldierRight,
	up: sprSoldierUp,
	down: sprSoldierDown
}

targetX = toRoom(toTile(x));
targetY = toRoom(toTile(y));

walk = false;