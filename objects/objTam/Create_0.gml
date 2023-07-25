/// @desc 
// Inherit the parent event
event_inherited();

x = floor(objPosSaver.xx/16)*16;
y = floor(objPosSaver.yy/16)*16;

//movement states for animation
states = {
	left: sprTamLeft,
	right: sprTamRight,
	up: sprTamUp,
	down: sprTamDown
}

playerControl = true;

state = states.down;

//for opening chests (the display)
lootGrabbed = "";

//respawn
me = objStats.playerStats;
if(me.hp <= 0)
{
	me.currentGld = ceil(me.currentGld/2);
	me.hp = me.maxhp;
	me.mp = me.maxmp;
}