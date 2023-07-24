/// @desc 
var len = TILE_SIZE
var dir_ = moveDir;

var facingCellX = x+lengthdir_x(len,dir_);
var facingCellY = y+lengthdir_y(len,dir_);

//Check for an npc
var npc = instance_position(facingCellX,facingCellY,objNpcParent);

if(npc != noone && !instance_exists(objTextbox) && playerControl)
{
	//show message icon above npc
	if(npc.sprite_index != sprSign)
	{
		npc.showMessageIcon = true;
	}
	
	//talk to npc
	if(mouse_check_button_pressed(INTERACT))
	{
		//make npc face the player
		npc.moveDir = point_direction(npc.x,npc.y,x,y);
		
		//Talk to npc if they arent a shopkeep, otherwise open the shop
		switch(npc.shopkeep)
		{
			case "No":
				break;
			case "Town1":
				var shop = instance_create_layer(0,0,"UI",objShop)
				ds_list_add(shop.stock,"Herb");
				ds_list_add(shop.stock,"Weed");
				ds_list_add(shop.stock,"Sword");
				break;
		}
		
		//Talk to npc if they arent a shopkeep, otherwise open the shop
		switch(npc.innkeep)
		{
			case "No":
				break;
			case "Town1":
				var inn = instance_create_layer(0,0,"UI",objInn)
				inn.cost = 30;
				break;
		}
		
		if(npc.shopkeep == "No" && npc.innkeep == "No") createTextbox(npc.dialog);	
	}
}

//Check for a chest
var chest = instance_position(facingCellX,facingCellY,objChest);

if(chest != noone && !instance_exists(objTextbox) && playerControl)
{
	//talk to npc
	if(mouse_check_button_pressed(INTERACT) && !chest.open)// && !ds_list_find_value(objGame.openChestList, chest.id))
	{
		ds_list_add(global.openChestList,chest.chestID);
		lootGrabbed = chest.loot;
		ds_list_add(objStats.inv,chest.loot);
		chest.image_index = 1;
		chest.open = true;
		alarm[0] = 120;
	}
}

//going through doors
var door = instance_position(x,y,objDoor);

if(position_meeting(x,y, objDoor) && !instance_exists(objFade))
{
	global.paused = true;
	global.lastX = door.targetX;
	global.lastY = door.targetY;
	Fade(true,true,door.targetRoom);
}