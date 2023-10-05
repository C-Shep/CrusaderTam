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
	
	if(objInput.interact())
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
			case "Valiburgh Weapon":
				var shop = instance_create_layer(0,0,"UI",objShop)
				ds_list_add(shop.stock,"Knife");
				ds_list_add(shop.stock,"BrnzeSpear");
				ds_list_add(shop.stock,"Flamberge");
				break;
			case "Valiburgh Armour":
				var shop = instance_create_layer(0,0,"UI",objShop)
				ds_list_add(shop.stock,"WoodShield");
				ds_list_add(shop.stock,"LeathrArmr");
				ds_list_add(shop.stock,"Silk Cape");
				break;
			case "Valiburgh Item":
				var shop = instance_create_layer(0,0,"UI",objShop)
				ds_list_add(shop.stock,"Herb");
				ds_list_add(shop.stock,"Weed");
				break;
			case "Orchard":
				var shop = instance_create_layer(0,0,"UI",objShop)
				ds_list_add(shop.stock,"Apple");
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

//For staring the game
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
	if(objInput.interact() || startTalk)
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
				if(!global.quest.postinoAskHelp)
				{
					npc.dialog = global.dialog.postinoAskHelp;
					endAction = "Postino Asked";
				}else{
					if(objStats.turnInItem("Letter"))
					{
						global.quest.postinoDelivered = true;
					}
					
					if(global.quest.postinoDelivered == true && global.quest.postinoChat == false)
					{
						npc.dialog = global.dialog.postinoDelivered;
						endAction = "Postino Delivered";
					}
					
					if(global.quest.postinoDelivered == true && global.quest.postinoChat == true)
					{
						npc.dialog = global.dialog.postinoChat;
					}
				}
			case valiGuard1:
			case valiGuard2:
				if(!global.quest.barghestQuestAccepted)
				{
					endAction = "Barghest Quest Accept";
				}else{
					if(global.quest.barghestKilled)
					{
						endAction = "Let Into Castle";
					}
				}
				break;
			case npcBarghest:
				global.area = "Barghest Boss";
				endAction = "Begin Fight";
				break;
			case npcAxassin:
				global.area = "Axassin Boss";
				endAction = "Begin Fight";
				break;
			case emma_:
				if(!global.quest.emmaAskHelp)
				{
					npc.dialog = global.dialog.emmaAskHelp;
					endAction = "Emma Asked";
				}else{
					if(objStats.turnInItem("Mage Ash"))
					{
						global.quest.emmaDelivered = true;
					}
					
					if(global.quest.emmaDelivered == true && global.quest.emmaChat == false)
					{
						npc.dialog = global.dialog.emmaDelivered;
						endAction = "Emma Delivered";
					}
					
					if(global.quest.emmaDelivered == true && global.quest.emmaChat == true)
					{
						npc.dialog = global.dialog.emmaChat;
					}
				}
				break;
			case chefElira:
				if(!global.quest.stewReceived)
				{
					npc.dialog = global.dialog.eliraTalk;
					endAction = "Get Stew";
				}else{
					npc.dialog = global.dialog.eliraTalkAgain;	
				}
				break;
			case kingWymar:
				npc.dialog = global.dialog.kingFirstTalk;
				endAction = "End Demo";
				break;
			case orchardist:
				if(!global.quest.orchardMonsterKilled)
				{
					npc.dialog = global.dialog.orchardistAskHelp;
				}else{	
					if(global.quest.orchardMonsterKilled == true && global.quest.orchardComplete == false)
					{
						npc.dialog = global.dialog.orchardistDelivered;
						endAction = "Orchard Complete";
					}
					
					if(global.quest.orchardMonsterKilled == true && global.quest.orchardComplete == true)
					{
						npc.dialog = global.dialog.orchardistChat;
					}
				}
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
	if(objInput.interact() && !chest.open)// && !ds_list_find_value(objGame.openChestList, chest.id))
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