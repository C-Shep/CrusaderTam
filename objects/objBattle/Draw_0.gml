/// @desc display
var middleX = room_width/2;
var middleY = room_height/2;

//set font
draw_set_font(fntMain);

#region //draw player stats and background
draw_text_colour(menuX,160,"hp: " + string(player.hp),colour,colour,colour,colour,1);
draw_text_colour(menuX+64,160,"mp: " + string(player.mp),colour,colour,colour,colour,1);

draw_sprite(sprGrassBG,0,middleX,middleY);
#endregion

#region draw enemy sprite
if(enemy.hp > 0)
{
	draw_sprite(enemy.sprite,0,middleX-16,middleY-16);
}
#endregion

if(!endMessages)
{
	if(!isEnemyTurn)
	{
		if(control)
		{
			#region// draw normal menu
			for(var i = 0; i < menuLength; i++)
			{
				if(i==selected)
				{
					draw_text_colour(menuX,menuY+((i+1)*menuHeight),">" + string(menu[i]),colour,colour,colour,colour,1); 
				}else{
					draw_text_colour(menuX,menuY+((i+1)*menuHeight),string(menu[i]),colour,colour,colour,colour,1);
				}
			}
			#endregion
		
		}
		else if(spellControl)
		{
			#region// draw spell menu
			for(var i = 0; i < spellLength; i++)
			{
				if(i==spellSelected)
				{
					draw_text_colour(menuX,menuY+((i+1)*menuHeight),">" + string(spell[i]),colour,colour,colour,colour,1); 
				}else{
					draw_text_colour(menuX,menuY+((i+1)*menuHeight),string(spell[i]),colour,colour,colour,colour,1);
				}
			}
			#endregion
		}
		else if(invControl)
		{
			#region// draw inv menu
			
			if(invSelected != 0)
			{
				draw_text_transformed_color(menuX+16,menuY+(menuHeight/2),">",1,1,90,colour,colour,colour,colour,1); 
			}
			
			if(invSelected < invLength-5)
			{
				draw_text_transformed_color(menuX+16,menuY+(menuHeight*7)+8,"<",1,1,90,colour,colour,colour,colour,1); 
			}
			
			for(var i = 0; i < invLength; i++)
			{
				var currentInv = ds_list_find_value(inv,i);
				
				if(i==invSelected)
				{
					draw_text_colour(menuX,menuY+menuHeight,">" + string(currentInv),colour,colour,colour,colour,1); 
				}else if(i <= invSelected + 5 && i > invSelected){
					draw_text_colour(menuX,menuY+menuHeight*(i - (invSelected-1)),string(currentInv),colour,colour,colour,colour,1);
				}
			}
			#endregion
		}
		else	
		{
			//action message
			combatMessage(actionMessage);
		}
	
	}else{	
		#region//enemy turn, currently just attacks. Work on this soon!
		if(alarm[0] != -1)
		{
			combatMessage(string(enemy.name_) + " attacks you for " + string((round(enemy.atk - (round(player.def/2))/2))) + " damage!",);
		}
		#endregion
	}
}else{
	if(enemy.hp <= 0)
	{
		if(messageCounter == 0)	//Victory Message
		{
			#region rewards
			
			
			if(rewardsGiven == false)
			{
				player.currentXp += enemy.xp;
				player.currentGld += enemy.gld;
				
				//Random Drops
				var willDrop = irandom(99)+1;
				show_debug_message(willDrop);
				if(willDrop <= dropChance)
				{
					ds_list_add(objStats.inv,enemy.drop);
					dropDropped = true;
				}
				
				rewardsGiven = true;
			}
			#endregion
			
			combatMessage("You defeated the " + string(enemy.name_) + "!");
		}else if(messageCounter == 1){	//Xp message
			combatMessage("You gain " + string(enemy.xp) + " xp");
		}else if(messageCounter == 2){	//Gold Message
			combatMessage("You gain " + string(enemy.gld) + " gold");
		}else if(messageCounter == 3){	//Item Message / Level Message
			if(dropDropped)
			{	
				combatMessage("The " + string(enemy.name_) + " dropped a " + string(enemy.drop));
			}else if(global.hasLevelled){
				combatMessage("You levelled up!");
			}
		}else if(messageCounter == 4){	//Level Message if Item has Dropped
			combatMessage("You levelled up!");
		}
	}
	else if(player.hp <= 0)
	{
		combatMessage("You have been defeated...");
	}
	
}
	