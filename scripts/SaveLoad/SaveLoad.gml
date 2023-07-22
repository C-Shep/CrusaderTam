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
	}
	
	with(objStats)
	{
		
		var statsSaveEntity = 
		{
			obj : object_get_name(object_index),
			stats : playerStats,
			itemList : ds_list_write(inv)
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
	//with()
	
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

					}
					break;
			}			
			

		}
		show_debug_message("Game Loaded!" + string_);
	}
}