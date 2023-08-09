/// @desc 
// Inherit the parent event
event_inherited();

if(global.quest.barghestQuestAccepted == true)
{
	dialog = global.dialog.guardBarghestTalkAgain;
}

if(global.quest.barghestKilled && global.quest.allowedIntoCastle == false)
{
	dialog = global.dialog.guardBarghestDefeated;
}else if(global.quest.allowedIntoCastle)
{
	dialog = global.dialog.guardBarghestDefeatedTalkAgain;
}

if(global.quest.barghestQuestAccepted == false)
{
	dialog = global.dialog.guardBarghestFirstTalk;
}

//Walk out of players way
if(walk)
{
	moveToPoint(targetX_,targetY_);	
	objTam.playerControl = false;	
}

//stop walking
if(x == toRoom(toTile(targetX_)) && y == toRoom(toTile(targetY_)) && walk)
{
	objTam.playerControl = true;
	instance_destroy();
	if(id == valiGuard1) moveDir = 0;
	if(id == valiGuard2) moveDir = 180;
	walk = false;
}