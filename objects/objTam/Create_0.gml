/// @desc 
// Inherit the parent event
event_inherited();

x = floor(objPosSaver.xx/16)*16;
y = floor(objPosSaver.yy/16)*16;

//movement states for animation


boatLeftSprite = sprBoatLeft;
boatLeftSprite = sprBoatLeft;
boatLeftSprite = sprBoatLeft;
boatLeftSprite = sprBoatLeft;

normalStates = {
	left: sprTamLeft,
	right: sprTamRight,
	up: sprTamUp,
	down: sprTamDown
}

boatStates = {
	left: sprBoatLeft,
	right: sprBoatRight,
	up: sprBoatUp,
	down: sprBoatDown
}

states = normalStates;

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

//starting position
startTalk = false;
startAlarm = 2;

if(!global.quest.sofiaTalked && room == rmQuillbeach)
{
	playerControl = false;
	moveDir = 90;
	startTalk = true;
}

function setNpcDialog(npc, newDialog)
{
	npc.dialog = newDialog;
}