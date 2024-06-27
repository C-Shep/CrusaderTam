draw_set_font(fntMain);


if(control)
{
	#region// draw normal menu
	
	//Draw Box
	draw_sprite_stretched(sprBox,0,menuX-16,menuY+32,384,menuHeight*(choiceLength+1));
	
	for(var i = 0; i < choiceLength; i++)
	{
		if(i==selected)
		{
			draw_text_transformed_color(menuX,menuY+((i+1)*menuHeight),">" + string(choice[i]),textSize,textSize,0,colour,colour,colour,colour,1); 
		}else{
			draw_text_transformed_color(menuX,menuY+((i+1)*menuHeight),string(choice[i]),textSize,textSize,0,colour,colour,colour,colour,1);
		}
	}

	#endregion
}
else if(buyControl)
{
	#region// draw stock menu
	
	//Draw the description box
	draw_sprite_stretched(sprBox,0,messageX-16,messageY-16,832,464);
	
	//Draw Box
	draw_sprite_stretched(sprBox,0,menuX-16,menuY,384,menuHeight*8);
			
	if(buySelected != 0)
	{
		draw_text_transformed_color(menuX+16,menuY+menuHeight-16,">",textSize,textSize,90,colour,colour,colour,colour,1); 
	}
			
	if(buySelected < stockLength-5)
	{
		draw_text_transformed_color(menuX+16,menuY+(menuHeight*7)+32,"<",textSize,textSize,90,colour,colour,colour,colour,1); 
	}
			
	for(var i = 0; i < stockLength; i++)
	{
		var currentStock = ds_list_find_value(stock,i);
		var selectedItem = ds_list_find_value(stock,buySelected);

		var equipmentStatsMessage = "";
		
		//Costs and Descriptions for Equipment
		for(var j = 0; j<ds_list_size(objEquipment.equipment);j++)
		{
			var e = objEquipment.equipment;
			var eCurrent = ds_list_find_value(e,j)
			var eName = eCurrent.name_;
			if(selectedItem == eName)
			{
				//Display equipment stats
				if(eCurrent.atk != 0)
				{
					equipmentStatsMessage += "Atk:" + string(eCurrent.atk) + "  ";
				}
				
				if(eCurrent.def != 0)
				{
					equipmentStatsMessage += "Def:" + string(eCurrent.def) + "  ";
				}
				
				if(eCurrent.spd != 0)
				{
					equipmentStatsMessage += "Spd:" + string(eCurrent.spd) + "  ";
				}
				
				cost = ds_list_find_value(e,j).cost;
				description = ds_list_find_value(e,j).desc;
			}
		}
		
		var itemDescMessage = "";
		
		//Costs & Descriptions for Items
		for(var j = 0; j<ds_list_size(objEquipment.items);j++)
		{
			var equipItemList = objEquipment.items;
			var eilCurrent =  ds_list_find_value(equipItemList,j);
			var eilName = eilCurrent.name_;
			if(selectedItem == eilName)
			{		
				//description
				cost = eilCurrent.cost;
				itemDescMessage = eilCurrent.desc;
				description = itemDescMessage;
			}
		}
		
		
		
		//Draw the cost and descrpton
		draw_text_transformed_colour(messageX,messageY,"Your gold: " + string(player.currentGld) + "g",textSize,textSize,0,colour,colour,colour,colour,1);
		draw_text_transformed_colour(messageX,messageY+64,string(cost) + "g",textSize,textSize,0,colour,colour,colour,colour,1);
		if(selectedItem == "Herb" || selectedItem == "StrongHerb" || selectedItem == "Apple")
		{
			draw_text_ext_transformed_colour(messageX,messageY+128,string(objStats.healCount)+"/"+string(objStats.maxHeals)+" "+description,16,200,textSize,textSize,0,colour,colour,colour,colour,1);
		}else{
			draw_text_ext_transformed_colour(messageX,messageY+128,description,16,200,textSize,textSize,0,colour,colour,colour,colour,1);
			draw_text_transformed_color(messageX,messageY+384,equipmentStatsMessage,textSize,textSize,0,colour,colour,colour,colour,1); 
		}
		
		//Draw the stock list
		if(i==buySelected)
		{
			draw_text_transformed_color(menuX,menuY+menuHeight,">" + string(currentStock),textSize,textSize,0,colour,colour,colour,colour,1); 

		}else if(i <= buySelected + 5 && i > buySelected){
			draw_text_transformed_color(menuX,menuY+menuHeight*(i - (buySelected-1)),string(currentStock),textSize,textSize,0,colour,colour,colour,colour,1);
		}
	}
	#endregion
}
else if(sellControl)
{
	#region// draw stock menu
	
	//Draw the description box
	draw_sprite_stretched(sprBox,0,messageX-16,messageY-16,832,240);
	
	//Draw Box
	draw_sprite_stretched(sprBox,0,menuX-16,menuY,384,menuHeight*8);
			
	if(sellSelected != 0)
	{
		draw_text_transformed_color(menuX+16,menuY+menuHeight-16,">",textSize,textSize,90,colour,colour,colour,colour,1); 
	}
			
	if(sellSelected < invLength-5)
	{
		draw_text_transformed_color(menuX+16,menuY+(menuHeight*7)+32,"<",textSize,textSize,90,colour,colour,colour,colour,1); 
	}
			
	for(var i = 0; i < invLength; i++)
	{
		var currentItem = ds_list_find_value(inv,i);
		var selectedItem = ds_list_find_value(inv,sellSelected);
		
		//Sell Costs for Equipment
		for(var j = 0; j<ds_list_size(objEquipment.equipment);j++)
		{
			var e = objEquipment.equipment;
			var eName = ds_list_find_value(e,j).name_;
			if(selectedItem == eName)
			{
				cost = floor((ds_list_find_value(e,j).cost)/2);
				sellCost = cost;
			}
		}
		
		//Sell Costs for Items
		for(var j = 0; j<ds_list_size(objEquipment.items);j++)
		{
			var itemList = objEquipment.items;
			var iName = ds_list_find_value(itemList,j).name_;
			if(selectedItem == iName)
			{
				cost = floor((ds_list_find_value(itemList,j).cost)/2);
				sellCost = cost;
			}
		}
		
		
		//Draw the cost and descrpton
		draw_text_transformed_colour(messageX,messageY,"Your gold: " + string(player.currentGld) + "g",textSize,textSize,0,colour,colour,colour,colour,1);
		draw_text_transformed_colour(messageX,messageY+64,"Sells for " + string(sellCost) + "g",textSize,textSize,0,colour,colour,colour,colour,1);		
		
		//Draw the players items list
		if(i==sellSelected)
		{
			draw_text_transformed_color(menuX,menuY+menuHeight,">" + string(currentItem),textSize,textSize,0,colour,colour,colour,colour,1); 
		}else if(i <= sellSelected + 5 && i > sellSelected){
			draw_text_transformed_color(menuX,menuY+menuHeight*(i - (sellSelected-1)),string(currentItem),textSize,textSize,0,colour,colour,colour,colour,1);
		}
	}
	#endregion
}