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
global.lastX = 64;
global.lastY = 64;

//Chests
global.openChestList = ds_list_create();
ds_list_add(global.openChestList,0);

room_goto(rmMenu);