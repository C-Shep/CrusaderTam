/// @desc 
randomize();
global.area = "Goblin";
global.hasLevelled = false;

//Equipping
global.weaponE = noone;
global.armourE = noone;
global.shieldE = noone;
global.trinketE = noone;

//(For the Menus)
global.weaponPlace = noone;
global.armourPlace = noone;
global.shieldPlace = noone;
global.trinketPlace = noone;

//For Multiple Rooms
global.lastRoom = rmEnd;
global.lastX = 256;
global.lastY = 256;

//Chests
global.openChestList = ds_list_create();
ds_list_add(global.openChestList,0);

//Death
global.respawnX = 264;
global.respawnY = 264;
global.respawnRoom = rmQuillbeach;

//Quests
global.quest = {
	sofiaTalked : false,
	sofiaGiven : false,
	postinoAskHelp : false,
	postinoDelivered : false,
	postinoChat : false,
	emmaAskHelp : false,
	emmaDelivered : false,
	emmaChat : false,
	barghestQuestAccepted : false,
	barghestKilled : false,
	allowedIntoCastle : false,
	stewReceived : false,
	kingTalkedOnce : false,
	orchardQuestAccepted : false,
	orchardMonsterKilled : false,
	orchardComplete : false,
}


room_goto(rmMenu);