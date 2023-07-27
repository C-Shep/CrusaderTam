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
global.lastRoom = rmTest;
global.lastX = 256;
global.lastY = 256;

//Chests
global.openChestList = ds_list_create();
ds_list_add(global.openChestList,0);

//Death
global.lastInn = "Town1";
global.respawnX = 0;
global.respawnY = 0;
global.respawnRoom = rmTest;


room_goto(rmMenu);