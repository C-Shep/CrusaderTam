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
else if(equipControl)
{
	#region// draw equip menu
	
	//Draw Box
	draw_sprite_stretched(sprBox,0,menuX-16,menuY,384,menuHeight*8);
	
	//Draw weapon stats
	draw_sprite_stretched(sprBox,0,messageX-16,messageY-16,832,80);
	
	var equipmentNow = ds_list_find_value(equip,equipSelected);
	var equipmentStatsMessage = "!";
	
	for(var j = 0; j<array_length(objEquipment.equipment)-1;j++)
	{
		var e = objEquipment.equipment;
		if(equipmentNow == e[j].name_)
			{
				//is a weapon
				if(e[j].atk != 0 && e[j].def == 0)//no defence
				{
					equipmentStatsMessage = "Atk:" + string(e[j].atk);	
				}else if(e[j].atk == 0 && e[j].def != 0)//no attack
				{
					equipmentStatsMessage = "Def:" + string(e[j].def);	
				}else//both
				{
					equipmentStatsMessage = "Atk:" + string(e[j].atk) + " Def:" + string(e[j].def);	
				}
			}
	}
	
	
	//if(objEquipment)
	
	displayMessage(equipmentStatsMessage);
	
	if(equipSelected != 0)
	{
		draw_text_transformed_color(menuX+16,menuY+menuHeight-16,">",textSize,textSize,90,colour,colour,colour,colour,1); 
	}
			
	if(equipSelected < equipLength-5)
	{
		draw_text_transformed_color(menuX+16,menuY+(menuHeight*7)+32,"<",textSize,textSize,90,colour,colour,colour,colour,1); 
	}
			
	for(var i = 0; i < equipLength; i++)
	{
		var currentInv = ds_list_find_value(equip,i);
		
		if(i == weaponPlace || i == shieldPlace || i == armourPlace || i == trinketPlace)
		{
			colour = c_yellow;
		}
		
		if(i==equipSelected)
		{
			draw_text_transformed_color(menuX,menuY+menuHeight,">" + string(currentInv),textSize,textSize,0,colour,colour,colour,colour,1); 
		}else if(i <= equipSelected + 5 && i > equipSelected){
			draw_text_transformed_color(menuX,menuY+menuHeight*(i - (equipSelected-1)),string(currentInv),textSize,textSize,0,colour,colour,colour,colour,1);
		}
		
		colour = c_white;
	}
	#endregion
}

#region Draw Hp and Mp and Xp and Gold and Level
if(control || spellControl || invControl)
{
	//Display HP and MP	
	var w = display_get_gui_width();
	var h = display_get_gui_height();
	
	//Draw Box
	draw_sprite_stretched(sprBox,0,0,h-136,w,64);
	draw_sprite_stretched(sprBox,0,0,h-72,256,64);

	//Draw Stats
	var hpMsg = "hp: " + string(player.hp) + "/" + string(player.maxhp);
	var mpMsg = "mp: " + string(player.mp) + "/" + string(player.maxmp);
	var xpMsg = "xp: " + string(player.currentXp);
	var gldMsg = "gld: " + string(player.currentGld);
	var lvlMsg = "lvl: " + string(player.lvl)
	draw_text_transformed_colour(menuX,h-128,hpMsg,textSize,textSize,0,colour,colour,colour,colour,1);
	draw_text_transformed_colour(menuX+320,h-128,mpMsg,textSize,textSize,0,colour,colour,colour,colour,1);
	draw_text_transformed_colour(menuX+640,h-128,xpMsg,textSize,textSize,0,colour,colour,colour,colour,1);
	draw_text_transformed_colour(menuX+896,h-128,gldMsg,textSize,textSize,0,colour,colour,colour,colour,1);
	draw_text_transformed_colour(menuX,h-64,lvlMsg,textSize,textSize,0,colour,colour,colour,colour,1);
}
#endregion

#region Display messages
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
#endregion
