draw_set_font(fntMain);

if(control)
{
	#region// draw stock menu
	
	//Draw the description box
	draw_sprite_stretched(sprBox,0,messageX-16,menuY,832,menuHeight*8);
	
	//Draw Box
	draw_sprite_stretched(sprBox,0,menuX-16,menuY,384,menuHeight*8);
			
	for(var i = 0; i < choiceLength; i++)
	{
		var currentSelection = choice[i];
		var selectedItem = choice[selected];
		
		switch(selectedItem)
		{
			case "Rest":
				messageX = 416;
				messageY = 80;
				draw_text_transformed_colour(messageX,messageY,"Your gold: " + string(player.currentGld) + "g",textSize,textSize,0,colour,colour,colour,colour,1);
				description = "A room for the night costs " + string(cost) + "g. Would you like to stay?";
				break;
			case "Save":
				messageX = 416;
				messageY = (80-128);
				description = "Shall I save your game for you?";
				break;
			case "Exit":
				messageX = 416;
				messageY = (80-128);
				description = "Do you want to save and exit the game?";
				break;
		}
		
		//Draw the cost and descrpton	
		draw_text_ext_transformed_colour(messageX,messageY+128,description,16,200,textSize,textSize,0,colour,colour,colour,colour,1);
		
		
		//Draw the stock list
		if(i==selected)
		{
			draw_text_transformed_color(menuX,menuY+menuHeight+(64*(i)),">" + string(currentSelection),textSize,textSize,0,colour,colour,colour,colour,1); 
		}else{
			draw_text_transformed_color(menuX,menuY+menuHeight+(64*(i)),string(currentSelection),textSize,textSize,0,colour,colour,colour,colour,1);
		}
	}
	#endregion
	
	#region Draw Hp and Mp

	//Display HP and MP	
	var w = display_get_gui_width();
	var h = display_get_gui_height();
	
	//Draw Box
	draw_sprite_stretched(sprBox,0,0,h-136,w,64);

	//Draw Stats
	var hpMsg = "hp: " + string(player.hp) + "/" + string(player.maxhp);
	var mpMsg = "mp: " + string(player.mp) + "/" + string(player.maxmp);
	draw_text_transformed_colour(menuX,h-128,hpMsg,textSize,textSize,0,colour,colour,colour,colour,1);
	draw_text_transformed_colour(menuX+640,h-128,mpMsg,textSize,textSize,0,colour,colour,colour,colour,1);

	#endregion
}