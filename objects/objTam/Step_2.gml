/// @desc 
var len = TILE_SIZE
var dir_ = moveDir;

var facingCellX = x+lengthdir_x(len,dir_);
var facingCellY = y+lengthdir_y(len,dir_);

var facingCellXExtra = x+lengthdir_x(len*2,dir_);
var facingCellYExtra = y+lengthdir_y(len*2,dir_);

//Check for an npc
var npc = instance_position(facingCellX,facingCellY,objNpcParent);
var overCounterNpc = instance_position(facingCellXExtra,facingCellYExtra,objNpcParent)

#region Shopping and Inns, talking over the counter
if(overCounterNpc != noone && moveDir == 90 && !instance_exists(objTextbox) && playerControl)
{
	//only show speech icon for shopkeeps and innkeeps over counters
	if(overCounterNpc.innkeep != "No" || overCounterNpc.shopkeep != "No") overCounterNpc.showMessageIcon = true;
	
	if(mouse_check_button_pressed(INTERACT))
	{
		//make npc face the player and display icon
		if(overCounterNpc.shouldTurn) overCounterNpc.moveDir = point_direction(overCounterNpc.x,overCounterNpc.y,x,y);	
		
		//Shopkeep
		switch(overCounterNpc.shopkeep)
		{
			case "No":
				break;
			case "Quillbeach":
				var shop = instance_create_layer(0,0,"UI",objShop)
				ds_list_add(shop.stock,"Herb");
				ds_list_add(shop.stock,"Weed");
				ds_list_add(shop.stock,"Knife");
				break;
		}
		
		//Innkeep
		switch(overCounterNpc.innkeep)
		{
			case "No":
				break;
			case "Quillbeach":
				var inn = instance_create_layer(0,0,"UI",objInn)
				inn.cost = 5;
				break;
			case "Valiburgh":
				var inn = instance_create_layer(0,0,"UI",objInn)
				inn.cost = 7;
				break;
		}	
		
		//Set respawn point
		if(overCounterNpc.innkeep != "No"){
			global.respawnX = x;
			global.respawnY = y;
			global.respawnRoom = room;
			show_debug_message(global.respawnX);
			show_debug_message(global.respawnY);
			show_debug_message(global.respawnRoom);
		}
	}
}
#endregion

if(startAlarm > 0) startAlarm--// else playerControl = true;

#region Normal Npcs
if(npc != noone && !instance_exists(objTextbox) && (playerControl || (startAlarm <= 0 && startTalk)))
{
	//show message icon above npc
	if(npc.sprite_index != sprSign && npc.sprite_index != sprGrave)
	{
		npc.showMessageIcon = true;
	}
	
	//talk to npc
	if(mouse_check_button_pressed(INTERACT) || startTalk)
	{
		startTalk = false;
		//make npc face the player
		if(npc.shouldTurn) npc.moveDir = point_direction(npc.x,npc.y,x,y);
		
		var endAction = "None";
	
		//talk to the npc
		switch(npc.id)//quest npcs
		{
			case sofiaBeach:
				playerControl = false;
				endAction = "Sofia Walk";
			break;
			case sofiaHouse:
				if(!global.quest.sofiaGiven) endAction = "Sofia Give";
			break;
			case carryValiburgh:
				for(var i=0;i<objStats.invLength;i++)
				{
					var itemName = ds_list_find_value(objStats.inv, i);
					if(itemName == "Letter"){
						ds_list_delete(objStats.inv,i);
					}
				}
				if(global.quest.postinoFound && !global.quest.postinoTalked) endAction = "Postino Give Scarf";
			break;
		}
		createTextbox(npc.dialog,endAction);
	}
}
#endregion

#region Chests
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
#endregion

#region Doors
//going through doors
var door = instance_position(x,y,objDoor);

if(position_meeting(x,y, objDoor) && !instance_exists(objFade))
{
	global.paused = true;
	global.lastX = door.targetX;
	global.lastY = door.targetY;
	Fade(true,true,door.targetRoom);
}
#endregion