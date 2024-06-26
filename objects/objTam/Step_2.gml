/// @desc 
var len = TILE_SIZE
var dir_ = moveDir;

var facingCellX = x+lengthdir_x(len,dir_);
var facingCellY = y+lengthdir_y(len,dir_);

var facingCellXExtra = x+lengthdir_x(len*2,dir_);
var facingCellYExtra = y+lengthdir_y(len*2,dir_);

//Boat
var boat = instance_position(facingCellX,facingCellY,objBoat);

//Center of Sprite
var tileXX = toTile(x+8);	//The Center of the Player X
var tileYY = toTile(y+8);	//The Center of the Player Y

//Change Sprite if on water
if(IsOnWater(tileXX,tileYY))
{
	states = boatStates;	
}else{
	states = normalStates;
}

//Check for an npc
npc = instance_position(facingCellX,facingCellY,objNpcParent);
var overCounterNpc = instance_position(facingCellXExtra,facingCellYExtra,objNpcParent);

if(boat)
{
	boat.showMessageIcon = true;
	if(objInput.interact())
	{
		global.boat = true;
		x = boat.x;
		y = boat.y;
		instance_destroy(boat);
	}
}

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
				ds_list_add(shop.stock,"Honey");
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
				ds_list_add(shop.stock,"Honey");
				break;
			case "Orchard":
				var shop = instance_create_layer(0,0,"UI",objShop)
				ds_list_add(shop.stock,"Apple");
				break;
			case "Wheatville":
				var shop = instance_create_layer(0,0,"UI",objShop)
				ds_list_add(shop.stock,"Herb");
				ds_list_add(shop.stock,"Honey");
				ds_list_add(shop.stock,"BrnzeSpear");
				ds_list_add(shop.stock,"IronShield");
				ds_list_add(shop.stock,"LeathrArmr");
				ds_list_add(shop.stock,"Silk Cape");
				break;
			case "Torgale Armour":
				var shop = instance_create_layer(0,0,"UI",objShop)
				ds_list_add(shop.stock,"IronShield");
				ds_list_add(shop.stock,"SteelShield");
				ds_list_add(shop.stock,"IronArmour");
				ds_list_add(shop.stock,"HeavyArmr");
				break;
			case "Torgale Weapon":
				var shop = instance_create_layer(0,0,"UI",objShop)
				ds_list_add(shop.stock,"IronSword");
				ds_list_add(shop.stock,"Epee");
				ds_list_add(shop.stock,"TorgaleKey");
				break;
			case "Torgale Item":
				var shop = instance_create_layer(0,0,"UI",objShop)
				ds_list_add(shop.stock,"Herb");
				ds_list_add(shop.stock,"StrongHerb");
				ds_list_add(shop.stock,"Honey");
				break;
		}
		
		//Innkeep
		switch(overCounterNpc.innkeep)
		{
			case "No":
				break;	//Not an inn
			//Create inn
			case "Quillbeach":
				var inn = instance_create_layer(0,0,"UI",objInn)
				inn.cost = 5;
				break;
			case "Valiburgh":
				var inn = instance_create_layer(0,0,"UI",objInn)
				inn.cost = 7;
				break;
			case "Wheatville":
				var inn = instance_create_layer(0,0,"UI",objInn)
				inn.cost = 10;
				break;
			case "Torgale":
				var inn = instance_create_layer(0,0,"UI",objInn)
				inn.cost = 12;
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

//For auto talking
if(startAlarm > 0) startAlarm--;// else playerControl = true;

#region Normal Npcs
if(npc != noone && !instance_exists(objTextbox) && (playerControl || (startAlarm <= 0 && startTalk)))
{
	//show message icon above npc
	npc.showMessageIcon = true;

	//talk to npc
	if(objInput.interact() || startTalk)
	{
		//make npc face the player
		if(npc.shouldTurn) npc.moveDir = point_direction(npc.x,npc.y,x,y);
		
		var endAction = "None";
	
		//if autotalking, stop
		startTalk = false;
		startAlarm = -1;
	
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
				endAction = fetchQuest("MageAsh",		//item
				global.dialog.emmaAskHelp,		//ask dialog
				global.dialog.emmaDelivered,	//deliver dialog
				global.dialog.emmaChat,		//chat dialog
				global.quest.emmaAskHelp,				//ask quest
				global.quest.emmaDelivered,				//deliver quest
				global.quest.emmaChat,					//chat quest
				"Emma Asked",							//ask end action
				"Emma Delivered");						//deliver end action
				break;
			case postValiburgh:
				endAction = fetchQuest("Letter",		//item
				global.dialog.postValiburghAskHelp,		//ask dialog
				global.dialog.postValiburghDelivered,	//deliver dialog
				global.dialog.postValiburghChat,		//chat dialog
				global.quest.postAskHelp,				//ask quest
				global.quest.postDelivered,				//deliver quest
				global.quest.postChat,					//chat quest
				"Post Asked",							//ask end action
				"Post Delivered");						//deliver end action
				break;
			case chefElira:
				if(!global.quest.stewReceived)
				{
					setNpcDialog(npc,global.dialog.eliraTalk);
					endAction = "Get Stew";
				}else{
					setNpcDialog(npc,global.dialog.eliraTalkAgain);
				}
				break;
			case kingWymar:
				if(!global.quest.kingTalkedToOnce)
				{
					setNpcDialog(npc,global.dialog.kingFirstTalk);
					endAction = "Talked Once To King";
				}else{
					setNpcDialog(npc,global.dialog.kingNoKnightsChat);
				}

				break;
			case orchardist:
				if(!global.quest.orchardMonsterKilled)
				{
					setNpcDialog(npc,global.dialog.orchardistAskHelp);
				}else{	
					if(global.quest.orchardMonsterKilled == true && global.quest.orchardComplete == false)
					{
						setNpcDialog(npc,global.dialog.orchardistDelivered);
						endAction = "Orchard Complete";
					}
					
					if(global.quest.orchardMonsterKilled == true && global.quest.orchardComplete == true)
					{
						setNpcDialog(npc,global.dialog.orchardistChat);
					}
				}
				break;
		case wheatMayor:
				if(!global.quest.wheatMayorAskHelp)
				{
					npc.dialog = global.dialog.wheatvilleMayorAskHelpOnce;
					endAction = "Wheat Mayor Asked";
				}else{
					if(!global.quest.wheatMayorDelivered && !global.quest.wheatMayorChat)
					{
						setNpcDialog(npc,global.dialog.wheatvilleMayorAskHelpAgain);
					}
					
					if(objStats.turnInItem("Troll Note"))
					{
						global.quest.wheatMayorDelivered = true;
					}
					
					if(global.quest.wheatMayorDelivered == true && global.quest.wheatMayorChat == false)
					{
						setNpcDialog(npc,global.dialog.wheatvilleMayorDelivered);
						endAction = "Wheat Mayor Delivered";
					}
					
					if(global.quest.wheatMayorDelivered == true && global.quest.wheatMayorChat == true)
					{
						setNpcDialog(npc,global.dialog.wheatvilleMayorChat);
					}
				}
				break;
		case trollKing:
				if(!global.quest.trollKingBeat)
				{
					npc.dialog = global.dialog.trollKingAttack;
					global.area = "Troll Boss";
					endAction = "Begin Fight";
				}else{	
					if(global.quest.trollKingBeat == true && global.quest.wheatMayorChat == false)
					{
						setNpcDialog(npc,global.dialog.trollKingPlead);
						endAction = "Troll King Beat";
					}
					
					if(global.quest.wheatMayorDelivered == true && global.quest.wheatMayorChat == true)
					{
						setNpcDialog(npc,global.dialog.trollKingChat);
					}
				}
				break;
			case postinoTorgale:
				endAction = fetchQuest("BlueParcel",	//item
				global.dialog.postinoTorgaleAskHelp,	//ask dialog
				global.dialog.postinoTorgaleDelivered,	//deliver dialog
				global.dialog.postinoTorgaleChat,		//chat dialog
				global.quest.postinoTorgaleAskHelp,		//ask quest
				global.quest.postinoTorgaleDelivered,	//deliver quest
				global.quest.postinoTorgaleChat,		//chat quest
				"Post Torgale Asked",					//ask end action
				"Post Torgale Delivered");				//deliver end action
				break;
			case torgaleDoor:
					endAction = openLockedDoor("TorgaleKey",global.quest.torgaleDoorOpen);
					if(endAction == "Destroy")
					{
						global.quest.torgaleDoorOpen = true;
					}
				break;
			case valiburghDoor:
					endAction = openLockedDoor("ValiburghKey",global.quest.valiburghDoorOpen);
				break;
			case SirOccoNpc:
				global.area = "Sir Occo Boss";
				endAction = "Begin Fight";
				break;
		}
		
		//create the textbox for the dialog
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
	if(objInput.interact() && !chest.open)
	{
		if(chest.loot != "Empty")
		{
			ds_list_add(objStats.inv,chest.loot);
		}
		
		lootGrabbed = chest.loot;
		ds_list_add(global.openChestList,chest.chestID);

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