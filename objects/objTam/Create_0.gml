/// @desc 
// Inherit the parent event
event_inherited();

//set correct position from battle, door or whatever
x = floor(objPosSaver.xx/16)*16;
y = floor(objPosSaver.yy/16)*16;

//movement states for animation
npc = noone;

//states for land and sea
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

// ----- Auto talk -----

//Talk as soon as spawning
startTalk = false;
startAlarm = 2;

//talk to sofia when the game starts
if(!global.quest.sofiaTalked && room == rmQuillbeach)
{
	playerControl = false;
	moveDir = 90;
	startTalk = true;
}

//if in troll cave and just beat the king
if(global.quest.trollKingBeat && room == rmTrollCave && !global.autoTalks.trollKingAutoTalked)
{
	playerControl = false;
	moveDir = 90;
	startTalk = true;
}



// ----- Functions -----

function setNpcDialog(npc, newDialog)
{
	npc.dialog = newDialog;
}

function openLockedDoor(item, doorQuest)
{
	//Check for key, if no key, say locked
	if(objStats.turnInItem(item))
	{
		doorQuest = true;
	}else{
		setNpcDialog(npc,global.dialog.locked);
	}
				
	//if Key, open
	if(doorQuest)
	{
		setNpcDialog(npc,global.dialog.itOpened);
		return "Destroy";
	}
	
	return "None";
}

function fetchQuest(item, askDialog, deliverDialog, chatDialog, askQuest, deliveredQuest, chatQuest, askEndAction, deliverEndAction)
{
	if(!askQuest)
	{
		setNpcDialog(npc,askDialog);
		return askEndAction;
	}else{
		if(objStats.turnInItem(item))
		{
			deliveredQuest = true;
		}
		
		if(chatQuest == true)
		{
			setNpcDialog(npc,chatDialog);
			return "None";
		}
					
		if(deliveredQuest == true && chatQuest == false)
		{
			setNpcDialog(npc,deliverDialog);
			return deliverEndAction;
		}
	}
}

	/*/Check for key, if no key, say locked
	if(objStats.turnInItem("TorgaleKey"))
	{
		global.quest.torgaleDoorOpen = true;
	}else{
		setNpcDialog(npc,global.dialog.locked);
	}
				
	//if Key, open
	if(global.quest.torgaleDoorOpen)
	{
		setNpcDialog(npc,global.dialog.itOpened);
		endAction = "Destroy";
	}
	
				if(!global.quest.postinoTorgaleAskHelp)
				{
					setNpcDialog(npc,global.dialog.postinoTorgaleAskHelp);
					endAction = "Post Torgale Asked";
				}else{
					if(objStats.turnInItem("BlueParcel"))
					{
						global.quest.postinoTorgaleDelivered = true;
					}
					
					if(global.quest.postinoTorgaleDelivered == true && global.quest.postinoTorgaleChat == false)
					{
						setNpcDialog(npc,global.dialog.postinoTorgaleDelivered);
						endAction = "Post Torgale Delivered";
					}
					
					if(global.quest.postinoTorgaleDelivered == true && global.quest.postinoTorgaleChat == true)
					{
						setNpcDialog(npc,global.dialog.postinoTorgaleChat);
					}
				}