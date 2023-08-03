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
	moveToPoint(targetX,targetY);	
	objTam.playerControl = false;	
}

//destroy when at house
if(x == targetX && y == targetY && walk)
{
	objTam.playerControl = true;
	if(id == valiGuard1) moveDir = 0;
	if(id == valiGuard2) moveDir = 180;
	walk = false;
}