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
	draw_sprite_stretched(sprBox,0,messageX-16,messageY-16,832,240);
	
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
		
		switch(selectedItem)
		{
			case "Herb":
				cost = 3;
				description = "Eat to heal 8 health";
				break;
			case "Weed":
				cost = 10;
				description = "Smoke to restore 10 magic";
				break;
			case "Sword":
				cost = 20;
				description = "Steel sword, +2 atk";
				break;
		}
		
		//Draw the cost and descrpton
		draw_text_transformed_colour(messageX,messageY,"Your gold: " + string(player.currentGld) + "g",textSize,textSize,0,colour,colour,colour,colour,1);
		draw_text_transformed_colour(messageX,messageY+64,string(cost) + "g",textSize,textSize,0,colour,colour,colour,colour,1);
		draw_text_transformed_colour(messageX,messageY+128,description,textSize,textSize,0,colour,colour,colour,colour,1);
		
		
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
		
		switch(selectedItem)
		{
			case "Herb":
				cost = 1;
				break;
			case "Weed":
				cost = 5;
				break;
			case "Sword":
				cost = 10;
				break;
			case "Spear":
				cost = 11;
				break;
			case "Shield":
				cost = 5;
				break;
			case "Chainmail":
				cost = 10;
				break;
			case "Amulet":
				cost = 5;
				break;
		}
		
		//Draw the cost and descrpton
		draw_text_transformed_colour(messageX,messageY,"Your gold: " + string(player.currentGld) + "g",textSize,textSize,0,colour,colour,colour,colour,1);
		draw_text_transformed_colour(messageX,messageY+64,"Sells for " + string(cost) + "g",textSize,textSize,0,colour,colour,colour,colour,1);		
		
		//Draw the stock list
		if(i==sellSelected)
		{
			draw_text_transformed_color(menuX,menuY+menuHeight,">" + string(currentItem),textSize,textSize,0,colour,colour,colour,colour,1); 
		}else if(i <= sellSelected + 5 && i > sellSelected){
			draw_text_transformed_color(menuX,menuY+menuHeight*(i - (sellSelected-1)),string(currentItem),textSize,textSize,0,colour,colour,colour,colour,1);
		}
	}
	#endregion
}