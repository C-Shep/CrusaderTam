///@desc save the game and load the game

function SaveTam(){
	//make save array
	var saveData = array_create(0);
	
	//for everything you wanna save, make a struct for it
	with(objTam)
	{
		var tamSaveEntity = 
		{
			obj : object_get_name(object_index),
			x : x,
			y : y,
			y_ :  global.lastY,
			x_ :  global.lastX,
			xx : objPosSaver.xx,
			yy : objPosSaver.yy,
			room : room
		}
		array_push(saveData,tamSaveEntity);
		instance_create_layer(0,0,"UI",objSaveMessage);
	}
	
	with(objStats)
	{
		
		var statsSaveEntity = 
		{
			obj : object_get_name(object_index),
			stats : playerStats,
			itemList : ds_list_write(inv),
			weapon : global.weaponE,
			shield : global.shieldE,
			armour : global.armourE,
			trinket : global.trinketE,
			weaponPlace : global.weaponPlace,
			shieldPlace : global.shieldPlace,
			armourPlace : global.armourPlace,
			trinketPlace : global.trinketPlace,
			chests : ds_list_write(global.openChestList),
			respawnX : global.respawnX,
			respawnY : global.respawnY,
			respawnRoom : global.respawnRoom,
			quests : global.quest,
			boatX : global.boatX,
			boatY : global.boatY,
			autoTalk : global.autoTalks,
		}

		array_push(saveData,statsSaveEntity);
	}
	
	var string_ = json_stringify(saveData);
	var buffer_ = buffer_create(string_byte_length(string_)+1,buffer_fixed,1);
	buffer_write(buffer_, buffer_string, string_);
	buffer_save(buffer_, "savedtam.sav");
	buffer_delete(buffer_);
	
	show_debug_message("Game Saved!" + string_);
}

function Load(){
	//erase current game state
	
	if(file_exists("savedtam.sav"))
	{
		var buffer_ = buffer_load("savedtam.sav");
		var string_ = buffer_read(buffer_,buffer_string);
		buffer_delete(buffer_);
		
		var loadData = json_parse(string_);
		
		while(array_length(loadData)>0)
		{
			var loadEntity = array_pop(loadData);
			
			switch(loadEntity.obj)
			{
				case "objTam":
					with(objTam)
					{
						room = loadEntity.room;

						global.lastX = loadEntity.x_;
						global.lastY = loadEntity.y_;
						x = floor(loadEntity.x/16)*16;
						y = floor(loadEntity.y/16)*16;
						objPosSaver.xx = x;
						objPosSaver.yy = y;
						inputX = 0;
						inputY = 0;
						moving = false;
						
					}
					break;
				case "objStats":
					with(objStats)
					{
						playerStats = loadEntity.stats;

						//haha callum you are fucking my strings
						ds_list_clear(inv);
						ds_list_read(inv,loadEntity.itemList);
						global.weaponE = loadEntity.weapon; 
						global.shieldE = loadEntity.shield;
						global.armourE = loadEntity.armour;
						global.trinketE = loadEntity.trinket;
						global.weaponPlace = loadEntity.weaponPlace;
						global.shieldPlace = loadEntity.shieldPlace;
						global.armourPlace = loadEntity.armourPlace;
						global.trinketPlace = loadEntity.trinketPlace;
						ds_list_clear(global.openChestList);
						ds_list_read(global.openChestList,loadEntity.chests);
						global.respawnX = loadEntity.respawnX;
						global.respawnY = loadEntity.respawnY;
						global.respawnRoom = loadEntity.respawnRoom;
						global.quest = loadEntity.quests;
						global.boatX = loadEntity.boatX;
						global.boatY = loadEntity.boatY;
						global.autoTalks = loadEntity.autoTalk;
					}
					break;
			}			
			

		}
		show_debug_message("Game Loaded!" + string_);
	}
}