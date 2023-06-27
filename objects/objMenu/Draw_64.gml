///@desc Draw menus

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
else if(spellControl)
{
	#region// draw spell menu
	
	//Draw Box
	draw_sprite_stretched(sprBox,0,menuX-16,menuY+32,384,menuHeight*(spellLength+1));
	
	for(var i = 0; i < spellLength; i++)
	{
		if(i==spellSelected)
		{
			draw_text_transformed_color(menuX,menuY+((i+1)*menuHeight),">" + string(spell[i]),textSize,textSize,0,colour,colour,colour,colour,1); 
		}else{
			draw_text_transformed_color(menuX,menuY+((i+1)*menuHeight),string(spell[i]),textSize,textSize,0,colour,colour,colour,colour,1);
		}
	}
	#endregion
}
else if(invControl)
{
	#region// draw inv menu
	
	//Draw Box
	draw_sprite_stretched(sprBox,0,menuX-16,menuY,384,menuHeight*8);
			
	if(invSelected != 0)
	{
		draw_text_transformed_color(menuX+16,menuY+menuHeight-16,">",textSize,textSize,90,colour,colour,colour,colour,1); 
	}
			
	if(invSelected < invLength-5)
	{
		draw_text_transformed_color(menuX+16,menuY+(menuHeight*7)+32,"<",textSize,textSize,90,colour,colour,colour,colour,1); 
	}
			
	for(var i = 0; i < invLength; i++)
	{
		var currentInv = ds_list_find_value(inv,i);
				
		if(i==invSelected)
		{
			draw_text_transformed_color(menuX,menuY+menuHeight,">" + string(currentInv),textSize,textSize,0,colour,colour,colour,colour,1); 
		}else if(i <= invSelected + 5 && i > invSelected){
			draw_text_transformed_color(menuX,menuY+menuHeight*(i - (invSelected-1)),string(currentInv),textSize,textSize,0,colour,colour,colour,colour,1);
		}
	}
	#endregion
}



#region Draw Hp and Mp
if(control || spellControl || invControl)
{
	//Display HP and MP	
	var w = display_get_gui_width();
	var h = display_get_gui_height();
	
	//Draw Box
	draw_sprite_stretched(sprBox,0,0,h-136,w,64);

	var hpMsg = "hp: " + string(player.hp) + "/" + string(player.maxhp);
	var mpMsg = "mp: " + string(player.mp) + "/" + string(player.maxmp);
	draw_text_transformed_colour(menuX,h-128,hpMsg,textSize,textSize,0,colour,colour,colour,colour,1);
	draw_text_transformed_colour(menuX+384,h-128,mpMsg,textSize,textSize,0,colour,colour,colour,colour,1);
}
#endregion

//action message
if(currentlyDisplaying)
{
	
	//Only show one message at a time, count down from 1 second
	if(startDisplayTimer)
	{
		startDisplayTimer = false;
		alarm[0] = 60;
	}
	
	//Draw message box
	draw_sprite_stretched(sprBox,0,messageX-16,messageY-16,832,80);
	
	//Display the actual text
	displayMessage(actionMessage);
}

